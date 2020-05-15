.class Landroid/view/PixelCopy$1;
.super Ljava/lang/Object;
.source "PixelCopy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Landroid/view/PixelCopy$OnPixelCopyFinishedListener;I)V
    .locals 0

    .line 188
    iput-object p1, p0, Landroid/view/PixelCopy$1;->val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    iput p2, p0, Landroid/view/PixelCopy$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Landroid/view/PixelCopy$1;->val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    iget v1, p0, Landroid/view/PixelCopy$1;->val$result:I

    invoke-interface {v0, v1}, Landroid/view/PixelCopy$OnPixelCopyFinishedListener;->onPixelCopyFinished(I)V

    .line 192
    return-void
.end method
