.class Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;
.super Landroid/service/wallpaper/IWallpaperService$Stub;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperServiceWrapper"
.end annotation


# instance fields
.field private final mTarget:Landroid/service/wallpaper/WallpaperService;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p2, "context"    # Landroid/service/wallpaper/WallpaperService;

    .line 1429
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperService$Stub;-><init>()V

    .line 1430
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mTarget:Landroid/service/wallpaper/WallpaperService;

    .line 1431
    return-void
.end method


# virtual methods
.method public attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "conn"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I
    .param p4, "isPreview"    # Z
    .param p5, "reqWidth"    # I
    .param p6, "reqHeight"    # I
    .param p7, "padding"    # Landroid/graphics/Rect;

    move-object v0, p0

    .line 1436
    new-instance v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mTarget:Landroid/service/wallpaper/WallpaperService;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V

    .line 1438
    return-void
.end method
