.class Landroid/view/View$2;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    .line 23898
    iput-object p1, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 23901
    iget-object v0, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 23902
    iget-object v0, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 23904
    :cond_0
    return-void
.end method
