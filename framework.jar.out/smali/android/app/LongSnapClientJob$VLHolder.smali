.class final Landroid/app/LongSnapClientJob$VLHolder;
.super Ljava/lang/Object;
.source "LongSnapClientJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LongSnapClientJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VLHolder"
.end annotation


# instance fields
.field public hashCode:I

.field final synthetic this$0:Landroid/app/LongSnapClientJob;

.field public view:Landroid/view/View;

.field public y:I


# direct methods
.method public constructor <init>(Landroid/app/LongSnapClientJob;Landroid/view/View;[I)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "location"    # [I

    .line 610
    iput-object p1, p0, Landroid/app/LongSnapClientJob$VLHolder;->this$0:Landroid/app/LongSnapClientJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p2, p0, Landroid/app/LongSnapClientJob$VLHolder;->view:Landroid/view/View;

    .line 612
    const/4 p1, 0x1

    aget p1, p3, p1

    iput p1, p0, Landroid/app/LongSnapClientJob$VLHolder;->y:I

    .line 613
    iget-object p1, p0, Landroid/app/LongSnapClientJob$VLHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroid/app/LongSnapClientJob$VLHolder;->hashCode:I

    .line 614
    return-void
.end method
