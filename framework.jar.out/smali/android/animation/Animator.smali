.class public abstract Landroid/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Animator$AnimatorConstantState;,
        Landroid/animation/Animator$AnimatorPauseListener;,
        Landroid/animation/Animator$AnimatorListener;
    }
.end annotation


# static fields
.field public static final DURATION_INFINITE:J = -0x1L


# instance fields
.field mChangingConfigurations:I

.field private mConstantState:Landroid/animation/Animator$AnimatorConstantState;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 55
    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return-void
.end method

.method static synthetic access$002(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;
    .locals 0
    .param p0, "x0"    # Landroid/animation/Animator;
    .param p1, "x1"    # Landroid/animation/Animator$AnimatorConstantState;

    .line 29
    iput-object p1, p0, Landroid/animation/Animator;->mConstantState:Landroid/animation/Animator$AnimatorConstantState;

    return-object p1
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 262
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 265
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 301
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 304
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method animateBasedOnPlayTime(JJZ)V
    .locals 0
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .line 516
    return-void
.end method

.method public appendChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .line 374
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    .line 375
    return-void
.end method

.method public canReverse()Z
    .locals 1

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 0

    .line 89
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 3

    .line 398
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 399
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 402
    :cond_0
    iget-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_1
    return-object v0

    .line 406
    .end local v0    # "anim":Landroid/animation/Animator;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public createConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Landroid/animation/Animator$AnimatorConstantState;

    invoke-direct {v0, p0}, Landroid/animation/Animator$AnimatorConstantState;-><init>(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public end()V
    .locals 0

    .line 100
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 350
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getStartDelay()J
.end method

.method public getTotalDuration()J
    .locals 5

    .line 201
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    .line 202
    .local v0, "duration":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 203
    return-wide v2

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method isInitialized()Z
    .locals 1

    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 1

    .line 252
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 115
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 118
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 119
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 120
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .locals 1
    .param p1, "frameTime"    # J

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllListeners()V
    .locals 2

    .line 329
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 333
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 337
    :cond_1
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 275
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 282
    :cond_1
    return-void
.end method

.method public removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 314
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 321
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .line 137
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 139
    iget-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 142
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 143
    .local v2, "numListeners":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 144
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    .end local v2    # "numListeners":I
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reverse is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .line 644
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .line 364
    iput p1, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    .line 365
    return-void
.end method

.method public abstract setDuration(J)Landroid/animation/Animator;
.end method

.method public abstract setInterpolator(Landroid/animation/TimeInterpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public setupEndValues()V
    .locals 0

    .line 433
    return-void
.end method

.method public setupStartValues()V
    .locals 0

    .line 421
    return-void
.end method

.method skipToEndValue(Z)V
    .locals 0
    .param p1, "inReverse"    # Z

    .line 499
    return-void
.end method

.method public start()V
    .locals 0

    .line 77
    return-void
.end method

.method startWithoutPulsing(Z)V
    .locals 0
    .param p1, "inReverse"    # Z

    .line 484
    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p0}, Landroid/animation/Animator;->reverse()V

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 489
    :goto_0
    return-void
.end method
