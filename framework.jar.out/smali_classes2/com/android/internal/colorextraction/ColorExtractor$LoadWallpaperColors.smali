.class Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;
.super Landroid/os/AsyncTask;
.source "ColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/ColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadWallpaperColors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/WallpaperManager;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mLockColors:Landroid/app/WallpaperColors;

.field private mSystemColors:Landroid/app/WallpaperColors;

.field final synthetic this$0:Lcom/android/internal/colorextraction/ColorExtractor;


# direct methods
.method private constructor <init>(Lcom/android/internal/colorextraction/ColorExtractor;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/colorextraction/ColorExtractor;Lcom/android/internal/colorextraction/ColorExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/colorextraction/ColorExtractor;
    .param p2, "x1"    # Lcom/android/internal/colorextraction/ColorExtractor$1;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;-><init>(Lcom/android/internal/colorextraction/ColorExtractor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, [Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->doInBackground([Landroid/app/WallpaperManager;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/app/WallpaperManager;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Landroid/app/WallpaperManager;

    .line 100
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mSystemColors:Landroid/app/WallpaperColors;

    .line 101
    aget-object v0, p1, v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mLockColors:Landroid/app/WallpaperColors;

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "b"    # Ljava/lang/Void;

    .line 106
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mSystemColors:Landroid/app/WallpaperColors;

    iput-object v1, v0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 107
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mLockColors:Landroid/app/WallpaperColors;

    iput-object v1, v0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 108
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-static {v0}, Lcom/android/internal/colorextraction/ColorExtractor;->access$100(Lcom/android/internal/colorextraction/ColorExtractor;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    .line 110
    return-void
.end method
