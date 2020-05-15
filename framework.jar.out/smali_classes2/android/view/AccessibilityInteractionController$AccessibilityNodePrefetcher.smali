.class Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodePrefetcher"
.end annotation


# static fields
.field private static final MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE:I = 0x32


# instance fields
.field private final mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    .line 945
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p2, "x1"    # Landroid/view/AccessibilityInteractionController$1;

    .line 945
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method private enforceNodeTreeConsistent(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    .line 1001
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 1003
    .local v1, "nodeMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1004
    .local v2, "nodeCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1005
    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1006
    .local v6, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1004
    .end local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1011
    .end local v4    # "i":I
    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1012
    .local v4, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v6, v4

    .line 1013
    .local v4, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v6, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v4, :cond_1

    .line 1014
    move-object v6, v4

    .line 1015
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1

    .line 1019
    :cond_1
    const/4 v7, 0x0

    .line 1020
    .local v7, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v8, 0x0

    .line 1021
    .local v8, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1022
    .local v9, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1023
    .local v10, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v10, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1025
    :goto_2
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1026
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1029
    .local v11, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1036
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1037
    if-nez v7, :cond_2

    .line 1042
    move-object v7, v11

    goto :goto_3

    .line 1038
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate accessibility focus:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in window:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1040
    invoke-static {v13}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v13, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1047
    :cond_3
    :goto_3
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1048
    if-nez v8, :cond_4

    .line 1053
    move-object v8, v11

    goto :goto_4

    .line 1049
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate input focus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in window:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1051
    invoke-static {v13}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v13, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1057
    :cond_5
    :goto_4
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v12

    .line 1058
    .local v12, "childCount":I
    move v13, v3

    .local v13, "j":I
    :goto_5
    if-ge v13, v12, :cond_7

    .line 1059
    invoke-virtual {v11, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v14

    .line 1060
    .local v14, "childId":J
    invoke-virtual {v1, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1061
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_6

    .line 1062
    invoke-interface {v10, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v14    # "childId":J
    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_5

    .line 1065
    .end local v11    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "childCount":I
    .end local v13    # "j":I
    :cond_7
    nop

    .line 1025
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1030
    .restart local v11    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate node: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in window:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1032
    invoke-static {v13}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v13, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1068
    .end local v11    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_6
    if-ltz v3, :cond_b

    .line 1069
    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1070
    .local v11, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1068
    .end local v11    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1071
    .restart local v11    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_a
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disconnected node: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1074
    .end local v3    # "j":I
    .end local v11    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    return-void
.end method

.method private prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1129
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1130
    return-void

    .line 1132
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1134
    .local v0, "addedChildren":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1135
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1137
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1138
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1139
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x32

    if-ge v3, v2, :cond_5

    .line 1140
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v4, :cond_1

    .line 1163
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1141
    return-void

    .line 1143
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1144
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v5, v4}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1145
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 1146
    .local v5, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v5, :cond_3

    .line 1147
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 1148
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_2

    .line 1149
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    goto :goto_1

    .line 1153
    :cond_3
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 1155
    .restart local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_4

    .line 1156
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1163
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1164
    nop

    .line 1165
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_7

    .line 1166
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1167
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1168
    .local v4, "addedChild":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1169
    .local v5, "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_6

    .line 1170
    invoke-direct {p0, v4, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_3

    .line 1172
    :cond_6
    nop

    .line 1173
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    .line 1174
    .local v6, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    invoke-direct {p0, v5, v6, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1176
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v4    # "addedChild":Landroid/view/View;
    .end local v5    # "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_3
    goto :goto_2

    .line 1178
    :cond_7
    return-void

    .line 1163
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method private prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 7
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1254
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 1255
    .local v0, "initialOutInfosSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 1256
    .local v1, "childCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x32

    if-ge v3, v1, :cond_2

    .line 1257
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 1258
    return-void

    .line 1260
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    .line 1261
    .local v4, "childNodeId":J
    nop

    .line 1262
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 1261
    invoke-virtual {p2, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 1263
    .local v6, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_1

    .line 1264
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    .end local v4    # "childNodeId":J
    .end local v6    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1267
    .end local v3    # "i":I
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_3

    .line 1268
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .line 1269
    .local v3, "addedChildCount":I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1270
    add-int v4, v0, v2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1271
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v4, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1269
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1274
    .end local v2    # "i":I
    .end local v3    # "addedChildCount":I
    :cond_3
    return-void
.end method

.method private prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1078
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1079
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1080
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    .line 1081
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 1082
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 1083
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_0

    .line 1084
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1087
    .end local v1    # "parentView":Landroid/view/View;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 1088
    :cond_1
    return-void
.end method

.method private prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 8
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1183
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 1184
    .local v0, "initialResultSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    .line 1185
    .local v1, "parentNodeId":J
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 1186
    .local v3, "accessibilityViewId":I
    :goto_0
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_5

    .line 1187
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_0

    .line 1188
    return-void

    .line 1190
    :cond_0
    nop

    .line 1191
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 1192
    .local v4, "virtualDescendantId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1193
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 1212
    :cond_1
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 1213
    return-void

    .line 1195
    :cond_2
    :goto_1
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 1196
    .local v5, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_4

    .line 1199
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 1200
    .local v6, "currentResultSize":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_2
    if-lt v7, v0, :cond_3

    .line 1201
    invoke-interface {p4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1200
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1205
    .end local v7    # "i":I
    :cond_3
    return-void

    .line 1207
    .end local v6    # "currentResultSize":I
    :cond_4
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    .line 1209
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 1211
    .end local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    nop

    .line 1215
    .end local v4    # "virtualDescendantId":I
    goto :goto_0

    .line 1216
    :cond_5
    return-void
.end method

.method private prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 9
    .param p1, "current"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1092
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1093
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 1094
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1095
    .local v1, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1096
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1098
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1099
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1100
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1101
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x32

    if-lt v5, v6, :cond_0

    .line 1122
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1102
    return-void

    .line 1104
    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1105
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v7

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1106
    invoke-static {v6, v5}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1107
    const/4 v6, 0x0

    .line 1108
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    nop

    .line 1109
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 1110
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v7, :cond_1

    .line 1111
    invoke-virtual {v5}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 1113
    :cond_1
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v6, v8

    .line 1116
    :goto_1
    if-eqz v6, :cond_2

    .line 1117
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1122
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1123
    goto :goto_2

    .line 1122
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    throw v3

    .line 1125
    .end local v1    # "parentGroup":Landroid/view/ViewGroup;
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method private prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 11
    .param p1, "current"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1220
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v0

    .line 1221
    .local v0, "parentNodeId":J
    nop

    .line 1222
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    .line 1223
    .local v2, "parentAccessibilityViewId":I
    nop

    .line 1224
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 1225
    .local v3, "parentVirtualDescendantId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1226
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 1248
    :cond_0
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_2

    .line 1227
    :cond_1
    :goto_0
    nop

    .line 1228
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1229
    .local v4, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_4

    .line 1230
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 1231
    .local v5, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 1232
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x32

    if-lt v7, v8, :cond_2

    .line 1233
    return-void

    .line 1235
    :cond_2
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v7

    .line 1236
    .local v7, "childNodeId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-eqz v9, :cond_3

    .line 1237
    nop

    .line 1238
    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v9

    .line 1239
    .local v9, "childVirtualDescendantId":I
    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1241
    .local v10, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v10, :cond_3

    .line 1242
    invoke-interface {p4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    .end local v7    # "childNodeId":J
    .end local v9    # "childVirtualDescendantId":I
    .end local v10    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1247
    .end local v4    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v6    # "i":I
    :cond_4
    nop

    .line 1250
    :goto_2
    return-void
.end method


# virtual methods
.method public prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualViewId"    # I
    .param p3, "fetchFlags"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 953
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 955
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 956
    :cond_0
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "extraDataRequested":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_5

    .line 958
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 959
    .local v2, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_4

    .line 960
    if-eqz v1, :cond_1

    .line 961
    invoke-virtual {p1, v2, v1, p5}, Landroid/view/View;->addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 964
    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    .line 966
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 968
    :cond_2
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_3

    .line 969
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 971
    :cond_3
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_4

    .line 972
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 975
    .end local v2    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    goto :goto_1

    .line 976
    :cond_5
    nop

    .line 977
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 978
    .restart local v2    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_9

    .line 979
    if-eqz v1, :cond_6

    .line 980
    invoke-virtual {v0, p2, v2, v1, p5}, Landroid/view/accessibility/AccessibilityNodeProvider;->addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 983
    :cond_6
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_7

    .line 985
    invoke-direct {p0, v2, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 987
    :cond_7
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_8

    .line 988
    invoke-direct {p0, v2, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 990
    :cond_8
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_9

    .line 991
    invoke-direct {p0, v2, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 998
    .end local v2    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    :goto_1
    return-void
.end method
