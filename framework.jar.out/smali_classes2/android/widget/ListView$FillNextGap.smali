.class Landroid/widget/ListView$FillNextGap;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FillNextGap"
.end annotation


# instance fields
.field public down:Z

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 4242
    iput-object p1, p0, Landroid/widget/ListView$FillNextGap;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListView;
    .param p2, "x1"    # Landroid/widget/ListView$1;

    .line 4242
    invoke-direct {p0, p1}, Landroid/widget/ListView$FillNextGap;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4245
    iget-object v0, p0, Landroid/widget/ListView$FillNextGap;->this$0:Landroid/widget/ListView;

    iget-boolean v1, p0, Landroid/widget/ListView$FillNextGap;->down:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;ZZ)V

    .line 4246
    return-void
.end method
