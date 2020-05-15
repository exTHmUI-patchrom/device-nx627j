.class Landroid/app/LongSnapClientJob$ViewInfoNode;
.super Ljava/lang/Object;
.source "LongSnapClientJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LongSnapClientJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewInfoNode"
.end annotation


# instance fields
.field public canScroll:Z

.field final synthetic this$0:Landroid/app/LongSnapClientJob;

.field public view:Landroid/view/View;

.field public viewId:I

.field public viewRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/app/LongSnapClientJob;)V
    .locals 1

    .line 535
    iput-object p1, p0, Landroid/app/LongSnapClientJob$ViewInfoNode;->this$0:Landroid/app/LongSnapClientJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewId:I

    .line 538
    iput-boolean v0, p0, Landroid/app/LongSnapClientJob$ViewInfoNode;->canScroll:Z

    .line 539
    iput-object p1, p0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LongSnapClientJob;Landroid/app/LongSnapClientJob$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/LongSnapClientJob;
    .param p2, "x1"    # Landroid/app/LongSnapClientJob$1;

    .line 535
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ViewInfoNode;-><init>(Landroid/app/LongSnapClientJob;)V

    return-void
.end method
