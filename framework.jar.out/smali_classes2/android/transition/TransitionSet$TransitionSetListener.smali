.class Landroid/transition/TransitionSet$TransitionSetListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroid/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Landroid/transition/TransitionSet;

    .line 352
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 353
    iput-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 354
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 365
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    .line 366
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget v0, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 369
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->end()V

    .line 371
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 372
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 357
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget-boolean v0, v0, Landroid/transition/TransitionSet;->mStarted:Z

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->start()V

    .line 359
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 361
    :cond_0
    return-void
.end method
