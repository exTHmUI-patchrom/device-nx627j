.class public Landroid/view/ViewDebug$HardwareCanvasProvider;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$CanvasProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardwareCanvasProvider"
.end annotation


# instance fields
.field private mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1795
    iget-object v0, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 1796
    iget-object v0, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCanvas(Landroid/view/View;II)Landroid/graphics/Canvas;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1789
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    .line 1790
    iget-object v0, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method
