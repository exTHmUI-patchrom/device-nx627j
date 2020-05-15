.class public final Landroid/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mKernelCount:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 567
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 568
    return-void
.end method

.method private findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;
    .locals 5
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    .line 649
    const/4 v0, 0x0

    move v1, v0

    .local v1, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 650
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    .line 651
    .local v2, "n":Landroid/renderscript/ScriptGroup$Node;
    move v3, v0

    .local v3, "ct2":I
    :goto_1
    iget-object v4, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 652
    iget-object v4, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 653
    return-object v2

    .line 651
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 649
    .end local v2    # "n":Landroid/renderscript/ScriptGroup$Node;
    .end local v3    # "ct2":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "ct":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;
    .locals 2
    .param p1, "s"    # Landroid/renderscript/Script;

    .line 640
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 641
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    if-ne p1, v1, :cond_0

    .line 642
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    return-object v1

    .line 640
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    .end local v0    # "ct":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private mergeDAGs(II)V
    .locals 2
    .param p1, "valueUsed"    # I
    .param p2, "valueKilled"    # I

    .line 593
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 594
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v1, p2, :cond_0

    .line 595
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iput p1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "ct":I
    :cond_1
    return-void
.end method

.method private validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V
    .locals 5
    .param p1, "target"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "original"    # Landroid/renderscript/ScriptGroup$Node;

    .line 573
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 574
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 575
    .local v1, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v2, :cond_1

    .line 576
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v2, v2, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 577
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    goto :goto_1

    .line 578
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_0
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 582
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    :goto_1
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v2, :cond_3

    .line 583
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v2, v2, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 584
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 587
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .end local v1    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    goto :goto_2

    .line 585
    .restart local v1    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    .end local v1    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v0    # "ct":I
    :cond_4
    return-void
.end method

.method private validateDAG()V
    .locals 5

    .line 621
    const/4 v0, 0x0

    move v1, v0

    .local v1, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 622
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    .line 623
    .local v2, "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 624
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    goto :goto_1

    .line 625
    :cond_0
    const-string v0, "Groups cannot contain unconnected scripts"

    .line 626
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {v3, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 628
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v2, v3}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 621
    .end local v2    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "ct":I
    :cond_3
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 632
    .local v1, "dagNumber":I
    nop

    .local v0, "ct":I
    :goto_2
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 633
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    iget v2, v2, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v2, v1, :cond_4

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 634
    :cond_4
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Multiple DAGs in group not allowed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 637
    .end local v0    # "ct":I
    :cond_5
    return-void
.end method

.method private validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V
    .locals 3
    .param p1, "n"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "dagNumber"    # I

    .line 601
    iget v0, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v0, p2, :cond_0

    .line 602
    iget v0, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    invoke-direct {p0, v0, p2}, Landroid/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    .line 603
    return-void

    .line 606
    :cond_0
    iput p2, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 607
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 608
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 609
    .local v1, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v2, v2, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 611
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 613
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v2, :cond_2

    .line 614
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v2, v2, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 615
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 607
    .end local v1    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "ct":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$FieldID;

    .line 705
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 706
    .local v0, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v0, :cond_1

    .line 710
    iget-object v1, p3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 711
    .local v1, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v1, :cond_0

    .line 715
    new-instance v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v2, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    .line 716
    .local v2, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    invoke-direct {p0, v0, v0}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 722
    return-object p0

    .line 712
    .end local v2    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_0
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "To script not found."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 707
    .end local v1    # "nt":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "From script not found."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$KernelID;

    .line 740
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 741
    .local v0, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v0, :cond_1

    .line 745
    invoke-direct {p0, p3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 746
    .local v1, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v1, :cond_0

    .line 750
    new-instance v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v2, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    .line 751
    .local v2, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-direct {p0, v0, v0}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 757
    return-object p0

    .line 747
    .end local v2    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_0
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "To script not found."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    .end local v1    # "nt":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "From script not found."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 3
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    .line 669
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 675
    invoke-direct {p0, p1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    return-object p0

    .line 679
    :cond_0
    iget v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 680
    iget-object v0, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v0}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 681
    .local v0, "n":Landroid/renderscript/ScriptGroup$Node;
    if-nez v0, :cond_1

    .line 683
    new-instance v1, Landroid/renderscript/ScriptGroup$Node;

    iget-object v2, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {v1, v2}, Landroid/renderscript/ScriptGroup$Node;-><init>(Landroid/renderscript/Script;)V

    move-object v0, v1

    .line 684
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_1
    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    return-object p0

    .line 670
    .end local v0    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Kernels may not be added once connections exist."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create()Landroid/renderscript/ScriptGroup;
    .locals 15

    .line 770
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 775
    const/4 v0, 0x0

    move v1, v0

    .local v1, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 776
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    iput v0, v2, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v1    # "ct":I
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/ScriptGroup$Builder;->validateDAG()V

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v1, "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v2, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    iget v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    new-array v3, v3, [J

    .line 784
    .local v3, "kernels":[J
    const/4 v4, 0x0

    .line 785
    .local v4, "idx":I
    move v10, v4

    move v4, v0

    .local v4, "ct":I
    .local v10, "idx":I
    :goto_1
    iget-object v5, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 786
    iget-object v5, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/renderscript/ScriptGroup$Node;

    .line 787
    .local v5, "n":Landroid/renderscript/ScriptGroup$Node;
    move v6, v0

    .local v6, "ct2":I
    :goto_2
    iget-object v7, v5, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 788
    iget-object v7, v5, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Script$KernelID;

    .line 789
    .local v7, "kid":Landroid/renderscript/Script$KernelID;
    add-int/lit8 v8, v10, 0x1

    .local v8, "idx":I
    iget-object v9, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v9}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    aput-wide v11, v3, v10

    .line 791
    .end local v10    # "idx":I
    const/4 v9, 0x0

    .line 792
    .local v9, "hasInput":Z
    const/4 v10, 0x0

    .line 793
    .local v10, "hasOutput":Z
    move v11, v9

    move v9, v0

    .local v9, "ct3":I
    .local v11, "hasInput":Z
    :goto_3
    iget-object v12, v5, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_2

    .line 794
    iget-object v12, v5, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v12, v12, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-ne v12, v7, :cond_1

    .line 795
    const/4 v11, 0x1

    .line 793
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 798
    .end local v9    # "ct3":I
    :cond_2
    move v9, v0

    .restart local v9    # "ct3":I
    :goto_4
    iget-object v12, v5, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_4

    .line 799
    iget-object v12, v5, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v12, v12, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    if-ne v12, v7, :cond_3

    .line 800
    const/4 v10, 0x1

    .line 798
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 803
    .end local v9    # "ct3":I
    :cond_4
    if-nez v11, :cond_5

    .line 804
    new-instance v9, Landroid/renderscript/ScriptGroup$IO;

    invoke-direct {v9, v7}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_5
    if-nez v10, :cond_6

    .line 807
    new-instance v9, Landroid/renderscript/ScriptGroup$IO;

    invoke-direct {v9, v7}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .end local v7    # "kid":Landroid/renderscript/Script$KernelID;
    .end local v10    # "hasOutput":Z
    .end local v11    # "hasInput":Z
    :cond_6
    add-int/lit8 v6, v6, 0x1

    move v10, v8

    goto :goto_2

    .line 785
    .end local v5    # "n":Landroid/renderscript/ScriptGroup$Node;
    .end local v6    # "ct2":I
    .end local v8    # "idx":I
    .local v10, "idx":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 812
    .end local v4    # "ct":I
    :cond_8
    iget v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    if-ne v10, v4, :cond_f

    .line 816
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v11, v4, [J

    .line 817
    .local v11, "src":[J
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v12, v4, [J

    .line 818
    .local v12, "dstk":[J
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v13, v4, [J

    .line 819
    .local v13, "dstf":[J
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v14, v4, [J

    .line 821
    .local v14, "types":[J
    move v4, v0

    .restart local v4    # "ct":I
    :goto_5
    iget-object v5, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 822
    iget-object v5, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 823
    .local v5, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v6, v5, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    iget-object v7, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v11, v4

    .line 824
    iget-object v6, v5, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v6, :cond_9

    .line 825
    iget-object v6, v5, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v7, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v12, v4

    .line 827
    :cond_9
    iget-object v6, v5, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v6, :cond_a

    .line 828
    iget-object v6, v5, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v7, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v13, v4

    .line 830
    :cond_a
    iget-object v6, v5, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    iget-object v7, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v14, v4

    .line 821
    .end local v5    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 833
    .end local v4    # "ct":I
    :cond_b
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object v5, v3

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v4 .. v9}, Landroid/renderscript/RenderScript;->nScriptGroupCreate([J[J[J[J[J)J

    move-result-wide v4

    .line 834
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_e

    .line 838
    new-instance v6, Landroid/renderscript/ScriptGroup;

    iget-object v7, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v6, v4, v5, v7}, Landroid/renderscript/ScriptGroup;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 839
    .local v6, "sg":Landroid/renderscript/ScriptGroup;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/renderscript/ScriptGroup$IO;

    iput-object v7, v6, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 840
    move v7, v0

    .local v7, "ct":I
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 841
    iget-object v8, v6, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/renderscript/ScriptGroup$IO;

    aput-object v9, v8, v7

    .line 840
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 844
    .end local v7    # "ct":I
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/renderscript/ScriptGroup$IO;

    iput-object v7, v6, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 845
    nop

    .local v0, "ct":I
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_d

    .line 846
    iget-object v7, v6, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/renderscript/ScriptGroup$IO;

    aput-object v8, v7, v0

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 849
    .end local v0    # "ct":I
    :cond_d
    return-object v6

    .line 835
    .end local v6    # "sg":Landroid/renderscript/ScriptGroup;
    :cond_e
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v6, "Object creation error, should not happen."

    invoke-direct {v0, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    .end local v4    # "id":J
    .end local v11    # "src":[J
    .end local v12    # "dstk":[J
    .end local v13    # "dstf":[J
    .end local v14    # "types":[J
    :cond_f
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Count mismatch, should not happen."

    invoke-direct {v0, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    .end local v1    # "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    .end local v2    # "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    .end local v3    # "kernels":[J
    .end local v10    # "idx":I
    :cond_10
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Empty script groups are not allowed"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
