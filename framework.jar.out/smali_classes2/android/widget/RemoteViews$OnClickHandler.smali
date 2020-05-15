.class public Landroid/widget/RemoteViews$OnClickHandler;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickHandler"
.end annotation


# instance fields
.field private mEnterAnimationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "windowingMode"    # I

    .line 376
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 378
    .local v1, "context":Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    if-eqz v2, :cond_0

    .line 379
    iget v2, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    invoke-static {v1, v2, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .local v2, "opts":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 381
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .restart local v2    # "opts":Landroid/app/ActivityOptions;
    :goto_0
    move-object v9, v2

    .line 384
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    .local v9, "opts":Landroid/app/ActivityOptions;
    if-eqz p4, :cond_1

    .line 385
    invoke-virtual {v9, p4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 387
    :cond_1
    nop

    .line 388
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/high16 v5, 0x10000000

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    .line 390
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 387
    move-object v2, v1

    move-object v4, p3

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "context":Landroid/content/Context;
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    nop

    .line 399
    const/4 v0, 0x1

    return v0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RemoteViews"

    const-string v3, "Cannot send pending intent due to unknown exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    return v0

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 392
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v2, "RemoteViews"

    const-string v3, "Cannot send pending intent: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    return v0
.end method

.method public setEnterAnimationId(I)V
    .locals 0
    .param p1, "enterAnimationId"    # I

    .line 403
    iput p1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    .line 404
    return-void
.end method
