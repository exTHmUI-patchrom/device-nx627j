.class Landroid/app/ActivityOptions$HideWindowListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideWindowListener"
.end annotation


# instance fields
.field private final mExit:Landroid/app/ExitTransitionCoordinator;

.field private mSharedElementHidden:Z

.field private mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionEnded:Z

.field private final mWaitingForTransition:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "exit"    # Landroid/app/ExitTransitionCoordinator;

    .line 1586
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 1587
    iput-object p1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    .line 1588
    iput-object p2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    .line 1590
    iget-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 1591
    .local v0, "transition":Landroid/transition/Transition;
    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {v0, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1593
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    goto :goto_0

    .line 1595
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    .line 1597
    :goto_0
    iget-object v1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1598
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1599
    const v2, 0x1020210

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1603
    invoke-virtual {v1, v2, p2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_1

    .line 1600
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot start a transition while one is running"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1605
    :cond_2
    :goto_1
    return-void
.end method

.method private hideWhenDone()V
    .locals 4

    .line 1621
    iget-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    if-eqz v0, :cond_2

    .line 1622
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1623
    iget-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1624
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1625
    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1626
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1624
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1628
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1629
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1630
    const v2, 0x1020210

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1632
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    .end local v0    # "numSharedElements":I
    .end local v1    # "decorView":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public hideSharedElements()V
    .locals 1

    .line 1616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    .line 1617
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    .line 1618
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 1609
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    .line 1610
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    .line 1611
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1612
    return-void
.end method
