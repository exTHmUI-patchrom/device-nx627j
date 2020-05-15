.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$PBackground;
    }
.end annotation


# instance fields
.field anim:Landroid/animation/TimeAnimator;

.field bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

.field layout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/PlatLogoActivity;

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->launchNextStage()V

    return-void
.end method

.method private launchNextStage()V
    .locals 6

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "egg_mode"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 260
    :try_start_0
    const-string v1, "egg_mode"

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 260
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "PlatLogoActivity"

    const-string v3, "Can\'t write settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    .line 269
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.category.PLATLOGO"

    .line 271
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    goto :goto_1

    .line 272
    :catch_1
    move-exception v1

    .line 273
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "PlatLogoActivity"

    const-string v3, "No more eggs."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->finish()V

    .line 276
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    .line 182
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    .line 184
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    .line 185
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 282
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->randomizePalette()V

    .line 284
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 295
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    .line 303
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 304
    return-void
.end method
