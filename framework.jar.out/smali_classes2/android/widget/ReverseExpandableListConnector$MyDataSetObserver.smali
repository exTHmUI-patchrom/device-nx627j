.class public Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ReverseExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ReverseExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ReverseExpandableListConnector;


# direct methods
.method protected constructor <init>(Landroid/widget/ReverseExpandableListConnector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ReverseExpandableListConnector;

    .line 855
    iput-object p1, p0, Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ReverseExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 858
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ReverseExpandableListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/widget/ReverseExpandableListConnector;->access$000(Landroid/widget/ReverseExpandableListConnector;ZZ)V

    .line 860
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector;->notifyDataSetChanged()V

    .line 861
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 865
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ReverseExpandableListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/widget/ReverseExpandableListConnector;->access$000(Landroid/widget/ReverseExpandableListConnector;ZZ)V

    .line 867
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector;->notifyDataSetInvalidated()V

    .line 868
    return-void
.end method
