.class public Landroid/widget/ReverseExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "ReverseExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ReverseExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "packedPosition"    # J
    .param p4, "id"    # J

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1253
    iput-wide p2, p0, Landroid/widget/ReverseExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1254
    iput-wide p4, p0, Landroid/widget/ReverseExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 1255
    return-void
.end method
