.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOrUpdateFullScreenWindowTask"
.end annotation


# instance fields
.field mHeight:I

.field mScreenOrientation:I

.field mWidth:I

.field mWinPkgName:Ljava/lang/String;

.field mX:I

.field mY:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;IIIII)V
    .locals 0
    .param p2, "winPkgName"    # Ljava/lang/String;
    .param p3, "screenOrientation"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 270
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWinPkgName:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWinPkgName:Ljava/lang/String;

    .line 272
    iput p3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mScreenOrientation:I

    .line 273
    iput p4, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mX:I

    .line 274
    iput p5, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mY:I

    .line 275
    iput p6, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWidth:I

    .line 276
    iput p7, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mHeight:I

    .line 277
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 281
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWinPkgName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWinPkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$300(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWinPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$200(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 285
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWidth:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mHeight:I

    invoke-static {v1, v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 290
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1200(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    .line 291
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$902(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z

    .line 292
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mScreenOrientation:I

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1300(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)V

    .line 293
    const-string v2, "NubiaFullScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFullScreenWindow mFullScreenWindowView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$402(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z

    .line 296
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mX:I

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1502(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)I

    .line 297
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mY:I

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1602(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)I

    .line 298
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)I

    move-result v1

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mX:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)I

    move-result v1

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mY:I

    if-eq v1, v2, :cond_3

    .line 301
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mWidth:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mHeight:I

    invoke-static {v1, v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 302
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "NubiaFullScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFullScreenWindow mFullScreenWindowView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mScreenOrientation:I

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1300(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)V

    .line 305
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mX:I

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1502(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)I

    .line 306
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;->mY:I

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1602(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_0
    goto :goto_1

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v2, "NubiaFullScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddOrUpdateFullScreenWindowTask Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    .line 314
    return-void

    .line 283
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
