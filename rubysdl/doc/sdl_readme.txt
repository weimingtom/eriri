D:\amdroid_rubysdl\work\rubysdl\jni\sdl\src\video\SDL_renderer_gles.c
D:\amdroid_rubysdl\work\rubysdl\jni\sdl\src\video\android\SDL_androidvideo.c

Key code compare ->
	(GDI <=> [GLES])
SDL_SetVideoMode ->
	(not_exists) <=> [GLES_ActivateRenderer]
	GDI_CreateRenderer <=> [GLES_CreateRenderer]
	WIN_CreateWindow <=> [not exists]
SDL_Flip ->
	(not_exists) <=> [GLES_DirtyTexture]
	GDI_RenderCopy <=> [GLES_RenderCopy]
	GDI_RenderPresent <=> [GLES_RenderPresent]
global variables ->
	SDL_VideoWindow -> SDL_Window * window
	SDL_PublicSurface : SDL_VideoTexture / SDL_VideoSurface
	
------------------------------
SDL_SetVideoMode =>
SDL_PublicSurface : SDL_VideoTexture / SDL_VideoSurface



SDL_SetVideoMode(int 640, int 480, int 16, unsigned long 0) line 725
Screen_s_open(unsigned long 16741320, unsigned long 1281, unsigned long 961, unsigned long 33, unsigned long 1) line 262 + 135 bytes
call_cfunc() line 5578 + 36 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741296, unsigned long 16741320, unsigned long 6913, int 4, const unsigned long * 0x0012f114, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2bb0) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3561 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()

SDL_Surface *
SDL_SetVideoMode(int width, int height, int bpp, Uint32 flags)
{
...

    /* Create a texture for the screen surface */
-->    SDL_VideoTexture =
        SDL_CreateTexture(desired_format, SDL_TEXTUREACCESS_STREAMING, width,
                          height);

    if (!SDL_VideoTexture) {
        SDL_VideoTexture =
            SDL_CreateTexture(desktop_format,
                              SDL_TEXTUREACCESS_STREAMING, width, height);
    }
    if (!SDL_VideoTexture) {
        return NULL;
    }

    /* Create the screen surface */
-->    SDL_VideoSurface = CreateVideoSurface(SDL_VideoTexture);
    if (!SDL_VideoSurface) {
        return NULL;
    }
    
...

-->    SDL_PublicSurface =
        (SDL_ShadowSurface ? SDL_ShadowSurface : SDL_VideoSurface);

------------------------------
SDL_Flip =>


SDL_UpdateRects(SDL_Surface * 0x00f87090, int 1, SDL_Rect * 0x0012ed4c) line 892
SDL_UpdateRect(SDL_Surface * 0x00f87090, long 0, long 0, unsigned long 0, unsigned long 0) line 846 + 15 bytes
SDL_Flip(SDL_Surface * 0x00f87090) line 831 + 17 bytes
Screen_flip(unsigned long 17251352) line 239 + 18 bytes
call_cfunc() line 5566 + 9 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741320, unsigned long 17251352, unsigned long 10577, int 0, const unsigned long * 0x00000000, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff22f8) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3043 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()

void
SDL_UpdateRects(SDL_Surface * screen, int numrects, SDL_Rect * rects)
{
    int i;

    if (screen == SDL_ShadowSurface) {
        for (i = 0; i < numrects; ++i) {
            SDL_LowerBlit(SDL_ShadowSurface, &rects[i], SDL_VideoSurface,
                          &rects[i]);
        }

        /* Fall through to video surface update */
        screen = SDL_VideoSurface;
    }
    if (screen == SDL_VideoSurface) {
        if (screen->flags & SDL_PREALLOC) {
            /* The surface memory is maintained by the renderer */
-->            SDL_DirtyTexture(SDL_VideoTexture, numrects, rects);
        } else {
            /* The surface memory needs to be copied to texture */
            int pitch = screen->pitch;
            int psize = screen->format->BytesPerPixel;
            for (i = 0; i < numrects; ++i) {
                const SDL_Rect *rect = &rects[i];
                void *pixels =
                    (Uint8 *) screen->pixels + rect->y * pitch +
                    rect->x * psize;
                SDL_UpdateTexture(SDL_VideoTexture, rect, pixels, pitch);
            }
        }
        if (SDL_VideoRendererInfo.flags & SDL_RENDERER_PRESENTCOPY) {
            for (i = 0; i < numrects; ++i) {
-->                SDL_RenderCopy(SDL_VideoTexture, &rects[i], &rects[i]);
            }
        } else {
            SDL_Rect rect;
            rect.x = 0;
            rect.y = 0;
            rect.w = screen->w;
            rect.h = screen->h;
            SDL_RenderCopy(SDL_VideoTexture, &rect, &rect);
        }
-->        SDL_RenderPresent();
    }
}

------------------------------

SDL_DirtyTexture : (GDI_DirtyTexture not exists, renderer->DirtyTexture == 0) <=> [GLES_DirtyTexture]

SDL_DirtyTexture(SDL_Texture * 0x00f87100, int 1, const SDL_Rect * 0x0012ed4c) line 2262
SDL_UpdateRects(SDL_Surface * 0x00f87090, int 1, SDL_Rect * 0x0012ed4c) line 867 + 19 bytes
SDL_UpdateRect(SDL_Surface * 0x00f87090, long 0, long 0, unsigned long 0, unsigned long 0) line 846 + 15 bytes
SDL_Flip(SDL_Surface * 0x00f87090) line 831 + 17 bytes
Screen_flip(unsigned long 17251352) line 239 + 18 bytes
call_cfunc() line 5566 + 9 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741320, unsigned long 17251352, unsigned long 10577, int 0, const unsigned long * 0x00000000, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff22f8) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3043 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()



------------------------------
SDL_RenderCopy : GDI_RenderCopy <=> [GLES_RenderCopy]

GDI_RenderCopy(SDL_Renderer * 0x00f871c0, SDL_Texture * 0x00f87100, const SDL_Rect * 0x0012ec48, const SDL_Rect * 0x0012ec38) line 887
SDL_RenderCopy(SDL_Texture * 0x00f87100, const SDL_Rect * 0x0012ed4c, const SDL_Rect * 0x0012ed4c) line 2599 + 24 bytes
SDL_UpdateRects(SDL_Surface * 0x00f87090, int 1, SDL_Rect * 0x0012ed4c) line 882 + 35 bytes
SDL_UpdateRect(SDL_Surface * 0x00f87090, long 0, long 0, unsigned long 0, unsigned long 0) line 846 + 15 bytes
SDL_Flip(SDL_Surface * 0x00f87090) line 831 + 17 bytes
Screen_flip(unsigned long 17251352) line 239 + 18 bytes
call_cfunc() line 5566 + 9 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741320, unsigned long 17251352, unsigned long 10577, int 0, const unsigned long * 0x00000000, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff22f8) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3043 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()


------------------------------
SDL_RenderPresent : GDI_RenderPresent <=> [GLES_RenderPresent]

GDI_RenderPresent(SDL_Renderer * 0x00f871c0) line 1024
SDL_RenderPresent() line 2699 + 12 bytes
SDL_UpdateRects(SDL_Surface * 0x00f87090, int 1, SDL_Rect * 0x0012ec94) line 894
SDL_UpdateRect(SDL_Surface * 0x00f87090, long 0, long 0, unsigned long 0, unsigned long 0) line 846 + 15 bytes
ClearVideoSurface() line 395 + 20 bytes
SDL_SetVideoMode(int 640, int 480, int 16, unsigned long 0) line 731
Screen_s_open(unsigned long 16741320, unsigned long 1281, unsigned long 961, unsigned long 33, unsigned long 1) line 262 + 135 bytes
call_cfunc() line 5578 + 36 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741296, unsigned long 16741320, unsigned long 6913, int 4, const unsigned long * 0x0012f114, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2bb0) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3561 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()



------------------------------
SDL_SetVideoMode : 
	(GDI_ActivateRenderer not exists, renderer->DirtyTexture == 0) <=> [GLES_ActivateRenderer]
	

SDL_SelectRenderer(SDL_Window * 0x00f880b0) line 1626
SDL_CreateRenderer(SDL_Window * 0x00f880b0, int 0, unsigned long 17) line 1604 + 9 bytes
SDL_SetVideoMode(int 640, int 480, int 16, unsigned long 0) line 662 + 16 bytes
Screen_s_open(unsigned long 16741320, unsigned long 1281, unsigned long 961, unsigned long 33, unsigned long 1) line 262 + 135 bytes
call_cfunc() line 5578 + 36 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741296, unsigned long 16741320, unsigned long 6913, int 4, const unsigned long * 0x0012f114, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2bb0) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3561 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()

int
SDL_SelectRenderer(SDL_Window * window)
{
    SDL_Renderer *renderer;

    CHECK_WINDOW_MAGIC(window, -1);

    renderer = window->renderer;
    if (!renderer) {
        SDL_SetError("Use SDL_CreateRenderer() to create a renderer");
        return -1;
    }
    if (renderer->ActivateRenderer) {
-->        if (renderer->ActivateRenderer(renderer) < 0) {
            return -1;
        }
    }
    SDL_CurrentDisplay->current_renderer = renderer;
    return 0;
}



------------------------------
SDL_SetVideoMode :
	GDI_CreateRenderer <=> [GLES_CreateRenderer]


SDL_VideoWindow -> SDL_Window * window


GDI_CreateRenderer(SDL_Window * 0x00f880b0, unsigned long 17) line 211
SDL_CreateRenderer(SDL_Window * 0x00f880b0, int 0, unsigned long 17) line 1577 + 15 bytes
SDL_SetVideoMode(int 640, int 480, int 16, unsigned long 0) line 662 + 16 bytes
Screen_s_open(unsigned long 16741320, unsigned long 1281, unsigned long 961, unsigned long 33, unsigned long 1) line 262 + 135 bytes
call_cfunc() line 5578 + 36 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741296, unsigned long 16741320, unsigned long 6913, int 4, const unsigned long * 0x0012f114, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2bb0) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3561 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()



SDL_Renderer *
GDI_CreateRenderer(SDL_Window * window, Uint32 flags)
{
    SDL_WindowData *windowdata = (SDL_WindowData *) window->driverdata;
    SDL_Renderer *renderer;
    GDI_RenderData *data;
    int bmi_size;
    HBITMAP hbm;
    int i, n;

    renderer = (SDL_Renderer *) SDL_calloc(1, sizeof(*renderer));
    if (!renderer) {
        SDL_OutOfMemory();
        return NULL;
    }

    data = (GDI_RenderData *) SDL_calloc(1, sizeof(*data));
    if (!data) {
        GDI_DestroyRenderer(renderer);
        SDL_OutOfMemory();
        return NULL;
    }

    renderer->DisplayModeChanged = GDI_DisplayModeChanged;
    renderer->CreateTexture = GDI_CreateTexture;
    renderer->QueryTexturePixels = GDI_QueryTexturePixels;
    renderer->SetTexturePalette = GDI_SetTexturePalette;
    renderer->GetTexturePalette = GDI_GetTexturePalette;
    renderer->SetTextureAlphaMod = GDI_SetTextureAlphaMod;
    renderer->SetTextureBlendMode = GDI_SetTextureBlendMode;
    renderer->SetTextureScaleMode = GDI_SetTextureScaleMode;
    renderer->UpdateTexture = GDI_UpdateTexture;
    renderer->LockTexture = GDI_LockTexture;
    renderer->UnlockTexture = GDI_UnlockTexture;
    renderer->SetDrawBlendMode = GDI_SetDrawBlendMode;
    renderer->RenderDrawPoints = GDI_RenderDrawPoints;
    renderer->RenderDrawLines = GDI_RenderDrawLines;
    renderer->RenderDrawRects = GDI_RenderDrawRects;
    renderer->RenderFillRects = GDI_RenderFillRects;
    renderer->RenderCopy = GDI_RenderCopy;
    renderer->RenderReadPixels = GDI_RenderReadPixels;
    renderer->RenderWritePixels = GDI_RenderWritePixels;
    renderer->RenderPresent = GDI_RenderPresent;
    renderer->DestroyTexture = GDI_DestroyTexture;
    renderer->DestroyRenderer = GDI_DestroyRenderer;
    renderer->info = GDI_RenderDriver.info;
-->    renderer->window = window;
    renderer->driverdata = data;
    
    
    
-----------------------------
SDL_SetVideoMode :
	WIN_CreateWindow <=> [not exists]


WIN_CreateWindow(SDL_VideoDevice * 0x00f878a0, SDL_Window * 0x00f880b0) line 185
SDL_CreateWindow(const char * 0x00000000, int 134217727, int 134217727, int 640, int 480, unsigned long 4) line 931 + 34 bytes
SDL_SetVideoMode(int 640, int 480, int 16, unsigned long 0) line 572 + 32 bytes
Screen_s_open(unsigned long 16741320, unsigned long 1281, unsigned long 961, unsigned long 33, unsigned long 1) line 262 + 135 bytes
call_cfunc() line 5578 + 36 bytes
rb_call0() line 5702 + 28 bytes
rb_call(unsigned long 16741296, unsigned long 16741320, unsigned long 6913, int 4, const unsigned long * 0x0012f114, int 0) line 5938 + 37 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2bb0) line 3391 + 51 bytes
rb_eval(unsigned long 16814616, RNode * 0x00ff2d18) line 3561 + 16 bytes
eval_node() line 1376 + 13 bytes
ruby_exec_internal() line 1553 + 18 bytes
ruby_exec() line 1574
SDL_main(int 1, char * * 0x00ed0ea0) line 59 + 5 bytes
main(int 1, char * * 0x00ed0ea0) line 263 + 13 bytes
mainCRTStartup() line 206 + 25 bytes
KERNEL32! 7c816037()


SDL_Window *
SDL_CreateWindow(const char *title, int x, int y, int w, int h, Uint32 flags)
{
    const Uint32 allowed_flags = (SDL_WINDOW_FULLSCREEN |
                                  SDL_WINDOW_OPENGL |
                                  SDL_WINDOW_BORDERLESS |
                                  SDL_WINDOW_RESIZABLE |
                                  SDL_WINDOW_INPUT_GRABBED);
    SDL_VideoDisplay *display;
    SDL_Window *window;

    if (!_this) {
        /* Initialize the video system if needed */
        if (SDL_VideoInit(NULL, 0) < 0) {
            return NULL;
        }
    }
    if (flags & SDL_WINDOW_OPENGL) {
        if (!_this->GL_CreateContext) {
            SDL_SetError("No OpenGL support in video driver");
            return NULL;
        }
        SDL_GL_LoadLibrary(NULL);
    }
    display = SDL_CurrentDisplay;
    window = (SDL_Window *)SDL_calloc(1, sizeof(*window));
    window->magic = &_this->window_magic;
    window->id = _this->next_object_id++;
    window->x = x;
    window->y = y;
    window->w = w;
    window->h = h;
    window->flags = (flags & allowed_flags);
    window->display = display;
    window->next = display->windows;
    if (display->windows) {
        display->windows->prev = window;
    }
    display->windows = window;

#if defined(ANDROID)
	__android_log_print(ANDROID_LOG_ERROR, "SDL_video.c",
		"SDL_CreateWindow - x=%d, y=%d, w=%d, h=%d, _this->CreateWindow=%p",
		window->x, window->y, window->w, window->h, _this->CreateWindow);
#endif

-->    if (_this->CreateWindow && _this->CreateWindow(_this, window) < 0) {
        SDL_DestroyWindow(window);
        return NULL;
    }

    if (title) {
        SDL_SetWindowTitle(window, title);
    }
    if (flags & SDL_WINDOW_MAXIMIZED) {
        SDL_MaximizeWindow(window);
    }
    if (flags & SDL_WINDOW_MINIMIZED) {
        SDL_MinimizeWindow(window);
    }
    if (flags & SDL_WINDOW_SHOWN) {
        SDL_ShowWindow(window);
    }
    SDL_UpdateWindowGrab(window);

    return window;
}


