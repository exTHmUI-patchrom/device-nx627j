.class Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;
.super Landroid/os/AsyncTask;
.source "SystemGestureServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->nofityLoadCurrentScreen(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

.field final synthetic val$callback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

    .line 198
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->this$0:Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->val$callback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 208
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 209
    .local v0, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 210
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/16 v3, 0x438

    const/16 v4, 0x780

    const/4 v5, 0x0

    const v6, 0x2e62f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 213
    .local v1, "screenBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 218
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->val$callback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;->onScreenUploaded(Landroid/graphics/Bitmap;)V

    .line 220
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 198
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "values"    # [Landroid/graphics/Bitmap;

    .line 203
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 198
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
