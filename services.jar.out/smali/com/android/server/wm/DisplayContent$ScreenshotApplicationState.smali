.class final Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenshotApplicationState"
.end annotation


# instance fields
.field appWin:Lcom/android/server/wm/WindowState;

.field maxLayer:I

.field minLayer:I

.field screenshotReady:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset(Z)V
    .locals 1
    .param p1, "screenshotReady"    # Z

    .line 3398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    .line 3399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    .line 3400
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 3401
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    .line 3402
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 3403
    return-void
.end method
