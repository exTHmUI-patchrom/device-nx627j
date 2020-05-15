.class public final synthetic Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/transition/Transition;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/app/Fragment;

.field private final synthetic f$3:Ljava/util/ArrayList;

.field private final synthetic f$4:Ljava/util/ArrayList;

.field private final synthetic f$5:Ljava/util/ArrayList;

.field private final synthetic f$6:Landroid/transition/Transition;


# direct methods
.method public synthetic constructor <init>(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$0:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$2:Landroid/app/Fragment;

    iput-object p4, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$5:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$6:Landroid/transition/Transition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$0:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$2:Landroid/app/Fragment;

    iget-object v3, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$5:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;->f$6:Landroid/transition/Transition;

    invoke-static/range {v0 .. v6}, Landroid/app/FragmentTransition;->lambda$scheduleTargetChange$1(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    return-void
.end method
