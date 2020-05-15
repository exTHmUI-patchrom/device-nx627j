.class Landroid/widget/ListView$FocusSelector;
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
    name = "FocusSelector"
.end annotation


# static fields
.field private static final STATE_REQUEST_FOCUS:I = 0x3

.field private static final STATE_SET_SELECTION:I = 0x1

.field private static final STATE_WAIT_FOR_LAYOUT:I = 0x2


# instance fields
.field private mAction:I

.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListView;
    .param p2, "x1"    # Landroid/widget/ListView$1;

    .line 1267
    invoke-direct {p0, p1}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method onLayoutComplete()V
    .locals 2

    .line 1310
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1311
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1313
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1288
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1289
    iget-object v0, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1290
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    goto :goto_0

    .line 1291
    :cond_0
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1292
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget-object v1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1293
    .local v0, "childIndex":I
    iget-object v1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1294
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1295
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1297
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1299
    .end local v0    # "childIndex":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method setupFocusIfValid(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "position"    # I

    .line 1302
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1306
    return-object p0

    .line 1303
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;
    .locals 1
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 1281
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    .line 1282
    iput p2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    .line 1283
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1284
    return-object p0
.end method
