.class Landroid/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # I

    .line 42
    invoke-static {p0, p1}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 571
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 572
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 573
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 577
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1059
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    .line 1060
    return-void

    .line 1062
    :cond_0
    instance-of v0, p0, Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1063
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 1064
    .local v0, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1065
    .local v2, "numTransitions":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1066
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v3

    .line 1067
    .local v3, "child":Landroid/transition/Transition;
    invoke-static {v3, p1}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1065
    .end local v3    # "child":Landroid/transition/Transition;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    .end local v0    # "set":Landroid/transition/TransitionSet;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    :cond_1
    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1070
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 1071
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1073
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1074
    .local v2, "numViews":I
    nop

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1075
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1079
    .end local v0    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v1    # "i":I
    .end local v2    # "numViews":I
    :cond_3
    :goto_2
    return-void
.end method

.method private static addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 23
    .param p0, "transaction"    # Landroid/app/BackStackRecord;
    .param p1, "op"    # Landroid/app/BackStackRecord$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1244
    iget-object v10, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1245
    .local v10, "fragment":Landroid/app/Fragment;
    if-nez v10, :cond_0

    .line 1246
    return-void

    .line 1248
    :cond_0
    iget v11, v10, Landroid/app/Fragment;->mContainerId:I

    .line 1249
    .local v11, "containerId":I
    if-nez v11, :cond_1

    .line 1250
    return-void

    .line 1252
    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    iget v5, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    aget v4, v4, v5

    goto :goto_0

    :cond_2
    iget v4, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    :goto_0
    move v12, v4

    .line 1253
    .local v12, "command":I
    const/4 v4, 0x0

    .line 1254
    .local v4, "setLastIn":Z
    const/4 v5, 0x0

    .line 1255
    .local v5, "wasRemoved":Z
    const/4 v6, 0x0

    .line 1256
    .local v6, "setFirstOut":Z
    const/4 v7, 0x0

    .line 1257
    .local v7, "wasAdded":Z
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v12, v9, :cond_b

    packed-switch v12, :pswitch_data_0

    .line 1297
    .end local v4    # "setLastIn":Z
    .end local v5    # "wasRemoved":Z
    .end local v6    # "setFirstOut":Z
    .end local v7    # "wasAdded":Z
    .local v13, "setLastIn":Z
    .local v14, "wasAdded":Z
    .local v15, "wasRemoved":Z
    .local v16, "setFirstOut":Z
    :goto_1
    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto/16 :goto_6

    .line 1259
    .end local v13    # "setLastIn":Z
    .end local v14    # "wasAdded":Z
    .end local v15    # "wasRemoved":Z
    .end local v16    # "setFirstOut":Z
    .restart local v4    # "setLastIn":Z
    .restart local v5    # "wasRemoved":Z
    .restart local v6    # "setFirstOut":Z
    .restart local v7    # "wasAdded":Z
    :pswitch_0
    if-eqz p4, :cond_4

    .line 1260
    iget-boolean v13, v10, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_3

    iget-boolean v13, v10, Landroid/app/Fragment;->mHidden:Z

    if-nez v13, :cond_3

    iget-boolean v13, v10, Landroid/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_3

    move v8, v9

    nop

    :cond_3
    move v4, v8

    goto :goto_2

    .line 1263
    :cond_4
    iget-boolean v4, v10, Landroid/app/Fragment;->mHidden:Z

    .line 1265
    :goto_2
    const/4 v7, 0x1

    .line 1266
    goto :goto_1

    .line 1277
    :pswitch_1
    if-eqz p4, :cond_6

    .line 1278
    iget-boolean v13, v10, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_5

    iget-boolean v13, v10, Landroid/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_5

    iget-boolean v13, v10, Landroid/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_5

    move v8, v9

    nop

    :cond_5
    move v6, v8

    goto :goto_3

    .line 1281
    :cond_6
    iget-boolean v13, v10, Landroid/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_7

    iget-boolean v13, v10, Landroid/app/Fragment;->mHidden:Z

    if-nez v13, :cond_7

    move v8, v9

    nop

    :cond_7
    move v6, v8

    .line 1283
    :goto_3
    const/4 v5, 0x1

    .line 1284
    goto :goto_1

    .line 1287
    :pswitch_2
    if-eqz p4, :cond_9

    .line 1288
    iget-boolean v13, v10, Landroid/app/Fragment;->mAdded:Z

    if-nez v13, :cond_8

    iget-object v13, v10, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v13, :cond_8

    iget-object v13, v10, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1289
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v10, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1290
    invoke-virtual {v13}, Landroid/view/View;->getTransitionAlpha()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_8

    move v8, v9

    nop

    :cond_8
    move v6, v8

    goto :goto_4

    .line 1292
    :cond_9
    iget-boolean v13, v10, Landroid/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_a

    iget-boolean v13, v10, Landroid/app/Fragment;->mHidden:Z

    if-nez v13, :cond_a

    move v8, v9

    nop

    :cond_a
    move v6, v8

    .line 1294
    :goto_4
    const/4 v5, 0x1

    goto :goto_1

    .line 1269
    :cond_b
    :pswitch_3
    if-eqz p4, :cond_c

    .line 1270
    iget-boolean v4, v10, Landroid/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_5

    .line 1272
    :cond_c
    iget-boolean v13, v10, Landroid/app/Fragment;->mAdded:Z

    if-nez v13, :cond_d

    iget-boolean v13, v10, Landroid/app/Fragment;->mHidden:Z

    if-nez v13, :cond_d

    move v8, v9

    nop

    :cond_d
    move v4, v8

    .line 1274
    :goto_5
    const/4 v7, 0x1

    .line 1275
    goto :goto_1

    .line 1297
    .end local v4    # "setLastIn":Z
    .end local v5    # "wasRemoved":Z
    .end local v6    # "setFirstOut":Z
    .end local v7    # "wasAdded":Z
    .restart local v13    # "setLastIn":Z
    .restart local v14    # "wasAdded":Z
    .restart local v15    # "wasRemoved":Z
    .restart local v16    # "setFirstOut":Z
    :goto_6
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/FragmentTransition$FragmentContainerTransition;

    .line 1298
    .local v4, "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v13, :cond_e

    .line 1299
    nop

    .line 1300
    invoke-static {v4, v2, v11}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v4

    .line 1301
    iput-object v10, v4, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 1302
    iput-boolean v3, v4, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1303
    iput-object v0, v4, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 1305
    .end local v4    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .local v8, "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    :cond_e
    move-object v8, v4

    const/4 v7, 0x0

    if-nez p4, :cond_10

    if-eqz v14, :cond_10

    .line 1306
    if-eqz v8, :cond_f

    iget-object v4, v8, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-ne v4, v10, :cond_f

    .line 1307
    iput-object v7, v8, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 1314
    :cond_f
    iget-object v6, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1315
    .local v6, "manager":Landroid/app/FragmentManagerImpl;
    iget v4, v10, Landroid/app/Fragment;->mState:I

    if-ge v4, v9, :cond_10

    iget v4, v6, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v4, v9, :cond_10

    iget-object v4, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 1316
    invoke-virtual {v4}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_10

    iget-boolean v4, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_10

    .line 1318
    invoke-virtual {v6, v10}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1319
    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v6

    move-object v5, v10

    move-object/from16 v20, v6

    move v6, v9

    .end local v6    # "manager":Landroid/app/FragmentManagerImpl;
    .local v20, "manager":Landroid/app/FragmentManagerImpl;
    move-object v9, v7

    move/from16 v7, v17

    move-object/from16 v21, v8

    move/from16 v8, v18

    .end local v8    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .local v21, "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    move-object v1, v9

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .end local v20    # "manager":Landroid/app/FragmentManagerImpl;
    goto :goto_7

    .line 1322
    .end local v21    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    :cond_10
    move-object v1, v7

    move-object/from16 v21, v8

    .end local v8    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    :goto_7
    if-eqz v16, :cond_12

    move-object/from16 v4, v21

    if-eqz v4, :cond_11

    .end local v21    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    iget-object v5, v4, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-nez v5, :cond_13

    .line 1323
    :cond_11
    nop

    .line 1324
    invoke-static {v4, v2, v11}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v8

    .line 1325
    .end local v4    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    iput-object v10, v8, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 1326
    iput-boolean v3, v8, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1327
    iput-object v0, v8, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    goto :goto_8

    .line 1330
    .end local v8    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    :cond_12
    move-object/from16 v4, v21

    .end local v21    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    :cond_13
    move-object v8, v4

    .end local v4    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    :goto_8
    if-nez p4, :cond_14

    if-eqz v15, :cond_14

    if-eqz v8, :cond_14

    iget-object v4, v8, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    if-ne v4, v10, :cond_14

    .line 1332
    iput-object v1, v8, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 1334
    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 962
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 963
    .local v0, "startIndex":I
    invoke-static {p0, p1, v0}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    return-void

    .line 966
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    move v1, v0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 968
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 969
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 970
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 971
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 972
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "childIndex":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 973
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 974
    .local v6, "child":Landroid/view/View;
    invoke-static {p0, v6, v0}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 975
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 967
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "childCount":I
    .end local v5    # "childIndex":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 980
    .end local v1    # "index":I
    :cond_3
    return-void
.end method

.method public static calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Landroid/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1200
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1201
    .local v0, "numOps":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1202
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    .line 1203
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    invoke-static {p0, v3, p1, v1, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1201
    .end local v3    # "op":Landroid/app/BackStackRecord$Op;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1205
    .end local v2    # "opNum":I
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;
    .locals 11
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 145
    .local v0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, p4, -0x1

    .local v1, "recordNum":I
    :goto_0
    if-lt v1, p3, :cond_4

    .line 146
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    .line 147
    .local v2, "record":Landroid/app/BackStackRecord;
    invoke-virtual {v2, p0}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    goto :goto_4

    .line 150
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 151
    .local v3, "isPop":Z
    iget-object v4, v2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 152
    iget-object v4, v2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 155
    .local v4, "numSharedElements":I
    if-eqz v3, :cond_1

    .line 156
    iget-object v5, v2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 157
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v6, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 159
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, v2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 160
    .restart local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 162
    .restart local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_3

    .line 163
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 164
    .local v8, "sourceName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 165
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 166
    .local v10, "previousTarget":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 167
    invoke-virtual {v0, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 169
    :cond_2
    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v8    # "sourceName":Ljava/lang/String;
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "previousTarget":Ljava/lang/String;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 145
    .end local v2    # "record":Landroid/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "numSharedElements":I
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 174
    .end local v1    # "recordNum":I
    :cond_4
    return-object v0
.end method

.method public static calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Landroid/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1217
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1221
    .local v0, "numOps":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "opNum":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1222
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    .line 1223
    .local v2, "op":Landroid/app/BackStackRecord$Op;
    const/4 v3, 0x1

    invoke-static {p0, v2, p1, v3, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1221
    .end local v2    # "op":Landroid/app/BackStackRecord$Op;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1225
    .end local v1    # "opNum":I
    :cond_1
    return-void
.end method

.method private static callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V
    .locals 6
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Z",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 918
    .local p3, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 919
    invoke-virtual {p1}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v0

    goto :goto_0

    .line 920
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v0

    .line 921
    .local v0, "sharedElementCallback":Landroid/app/SharedElementCallback;
    :goto_0
    if-eqz v0, :cond_4

    .line 922
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    if-nez p3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 925
    .local v4, "count":I
    :goto_1
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 926
    invoke-virtual {p3, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual {p3, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 929
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    if-eqz p4, :cond_3

    .line 930
    invoke-virtual {v0, v2, v1, v3}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 932
    :cond_3
    invoke-virtual {v0, v2, v1, v3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 935
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "count":I
    :cond_4
    :goto_3
    return-void
.end method

.method private static captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .locals 11
    .param p1, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 764
    .local p0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 765
    .local v0, "inFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 766
    .local v1, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p1, :cond_8

    if-nez v1, :cond_0

    goto :goto_3

    .line 770
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 771
    .local v2, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v1, v2}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 775
    iget-object v3, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 776
    .local v3, "inTransaction":Landroid/app/BackStackRecord;
    iget-boolean v4, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v4, :cond_1

    .line 777
    invoke-virtual {v0}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v4

    .line 778
    .local v4, "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v5, v3, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 780
    .end local v4    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v4

    .line 781
    .restart local v4    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v5, v3, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 784
    .restart local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v5, :cond_2

    .line 785
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 787
    :cond_2
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 788
    invoke-virtual {v4, v5, v2}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 789
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_7

    .line 790
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 791
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 792
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_4

    .line 793
    invoke-static {p0, v7}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 794
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 795
    invoke-virtual {p0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .end local v9    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 798
    invoke-static {p0, v7}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 799
    .restart local v9    # "key":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 800
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "key":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 805
    .end local v6    # "i":I
    :cond_6
    invoke-static {p0, v2}, Landroid/app/FragmentTransition;->retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 807
    :cond_7
    return-object v2

    .line 767
    .end local v2    # "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v3    # "inTransaction":Landroid/app/BackStackRecord;
    .end local v4    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 768
    const/4 v2, 0x0

    return-object v2
.end method

.method private static captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .locals 10
    .param p1, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 709
    .local p0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 713
    :cond_0
    iget-object v0, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 714
    .local v0, "outFragment":Landroid/app/Fragment;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 715
    .local v1, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 719
    iget-object v2, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 720
    .local v2, "outTransaction":Landroid/app/BackStackRecord;
    iget-boolean v3, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_1

    .line 721
    invoke-virtual {v0}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    .line 722
    .local v3, "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v4, v2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 724
    .end local v3    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    .line 725
    .restart local v3    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v4, v2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 728
    .restart local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 729
    if-eqz v3, :cond_4

    .line 730
    invoke-virtual {v3, v4, v1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 731
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 732
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 733
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 734
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_2

    .line 735
    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 736
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 737
    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 738
    .local v8, "targetValue":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "targetValue":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 742
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 744
    :cond_5
    return-object v1

    .line 710
    .end local v0    # "outFragment":Landroid/app/Fragment;
    .end local v1    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v2    # "outTransaction":Landroid/app/BackStackRecord;
    .end local v3    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 711
    const/4 v0, 0x0

    return-object v0
.end method

.method private static cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0
    .param p0, "transition"    # Landroid/transition/Transition;

    .line 445
    if-eqz p0, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 448
    :cond_0
    return-object p0
.end method

.method private static configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1099
    .local p2, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1100
    .local v0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_2

    .line 1101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1102
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1103
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1104
    invoke-virtual {v1, v0}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 1106
    :cond_0
    if-eqz p2, :cond_1

    .line 1107
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1109
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1110
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1114
    .end local v1    # "root":Landroid/view/View;
    :cond_2
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 21
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Landroid/transition/Transition;
    .param p7, "exitTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    .local p2, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    .line 613
    move-object/from16 v15, p7

    iget-object v10, v12, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 614
    .local v10, "inFragment":Landroid/app/Fragment;
    iget-object v9, v12, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 616
    .local v9, "outFragment":Landroid/app/Fragment;
    const/4 v0, 0x0

    if-eqz v10, :cond_6

    if-nez v9, :cond_0

    .line 617
    move-object/from16 v1, p0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    goto/16 :goto_4

    .line 620
    :cond_0
    iget-boolean v8, v12, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 621
    .local v8, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v10, v9, v8}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 624
    .local v1, "sharedElementTransition":Landroid/transition/TransitionSet;
    :goto_0
    move-object/from16 v7, p2

    invoke-static {v7, v1, v12}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v6

    .line 627
    .local v6, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    const/4 v1, 0x0

    .line 633
    .end local v1    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .local v5, "sharedElementTransition":Landroid/transition/TransitionSet;
    :goto_1
    move-object v5, v1

    goto :goto_2

    .line 630
    .end local v5    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .restart local v1    # "sharedElementTransition":Landroid/transition/TransitionSet;
    :cond_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 633
    .end local v1    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .restart local v5    # "sharedElementTransition":Landroid/transition/TransitionSet;
    :goto_2
    if-nez v14, :cond_3

    if-nez v15, :cond_3

    if-nez v5, :cond_3

    .line 635
    return-object v0

    .line 638
    :cond_3
    const/4 v1, 0x1

    invoke-static {v10, v9, v8, v6, v1}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 641
    if-eqz v5, :cond_5

    .line 642
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 643
    .local v0, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v4, p1

    invoke-static {v5, v4, v13}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 644
    iget-boolean v1, v12, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 645
    .local v1, "outIsPop":Z
    iget-object v2, v12, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 646
    .local v2, "outTransaction":Landroid/app/BackStackRecord;
    invoke-static {v5, v15, v6, v1, v2}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    .line 648
    if-eqz v14, :cond_4

    .line 649
    new-instance v3, Landroid/app/FragmentTransition$3;

    invoke-direct {v3, v0}, Landroid/app/FragmentTransition$3;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v14, v3}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 659
    .end local v1    # "outIsPop":Z
    .end local v2    # "outTransaction":Landroid/app/BackStackRecord;
    :cond_4
    goto :goto_3

    .line 660
    .end local v0    # "inEpicenter":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v4, p1

    .local v11, "inEpicenter":Landroid/graphics/Rect;
    :goto_3
    move-object v11, v0

    .line 663
    move-object v2, v5

    .line 665
    .local v2, "finalSharedElementTransition":Landroid/transition/TransitionSet;
    new-instance v3, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;

    move-object v0, v3

    move-object v1, v7

    move-object v15, v3

    move-object v3, v12

    move-object/from16 v4, p5

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    .end local v5    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .local v16, "sharedElementTransition":Landroid/transition/TransitionSet;
    move-object/from16 v17, v6

    move-object v6, v10

    .end local v6    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v17, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object v7, v9

    move/from16 v18, v8

    .end local v8    # "inIsPop":Z
    .local v18, "inIsPop":Z
    move-object/from16 v19, v9

    move-object v9, v13

    .end local v9    # "outFragment":Landroid/app/Fragment;
    .local v19, "outFragment":Landroid/app/Fragment;
    move-object/from16 v20, v10

    move-object v10, v14

    .end local v10    # "inFragment":Landroid/app/Fragment;
    .local v20, "inFragment":Landroid/app/Fragment;
    invoke-direct/range {v0 .. v11}, Landroid/app/-$$Lambda$FragmentTransition$Ip0LktADPhG_3ouNBXgzufWpFfY;-><init>(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    move-object/from16 v1, p0

    invoke-static {v1, v15}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 689
    return-object v16

    .line 617
    .end local v2    # "finalSharedElementTransition":Landroid/transition/TransitionSet;
    .end local v11    # "inEpicenter":Landroid/graphics/Rect;
    .end local v16    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .end local v17    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v18    # "inIsPop":Z
    .end local v19    # "outFragment":Landroid/app/Fragment;
    .end local v20    # "inFragment":Landroid/app/Fragment;
    .restart local v9    # "outFragment":Landroid/app/Fragment;
    .restart local v10    # "inFragment":Landroid/app/Fragment;
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .end local v9    # "outFragment":Landroid/app/Fragment;
    .end local v10    # "inFragment":Landroid/app/Fragment;
    .restart local v19    # "outFragment":Landroid/app/Fragment;
    .restart local v20    # "inFragment":Landroid/app/Fragment;
    :goto_4
    return-object v0
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 20
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Landroid/transition/Transition;
    .param p7, "exitTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    .local p2, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 484
    move-object/from16 v6, p7

    iget-object v14, v2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 485
    .local v14, "inFragment":Landroid/app/Fragment;
    iget-object v15, v2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 486
    .local v15, "outFragment":Landroid/app/Fragment;
    if-eqz v14, :cond_0

    .line 487
    invoke-virtual {v14}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_0
    const/4 v7, 0x0

    if-eqz v14, :cond_9

    if-nez v15, :cond_1

    goto/16 :goto_3

    .line 493
    :cond_1
    iget-boolean v13, v2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 494
    .local v13, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 495
    move-object v8, v7

    goto :goto_0

    :cond_2
    invoke-static {v14, v15, v13}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v8

    .line 497
    .local v8, "sharedElementTransition":Landroid/transition/TransitionSet;
    :goto_0
    invoke-static {v1, v8, v2}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v11

    .line 500
    .local v11, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v1, v8, v2}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v10

    .line 503
    .local v10, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 504
    const/4 v8, 0x0

    .line 505
    if-eqz v11, :cond_3

    .line 506
    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 508
    :cond_3
    if-eqz v10, :cond_5

    .line 509
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1

    .line 512
    :cond_4
    nop

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 512
    invoke-static {v3, v11, v9}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    .line 514
    nop

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    .line 514
    invoke-static {v4, v10, v9}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    .line 518
    .end local v8    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .local v9, "sharedElementTransition":Landroid/transition/TransitionSet;
    :cond_5
    :goto_1
    move-object v9, v8

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-nez v9, :cond_6

    .line 520
    return-object v7

    .line 523
    :cond_6
    const/4 v8, 0x1

    invoke-static {v14, v15, v13, v11, v8}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 527
    if-eqz v9, :cond_8

    .line 528
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-static {v9, v0, v3}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 530
    iget-boolean v7, v2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 531
    .local v7, "outIsPop":Z
    iget-object v8, v2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 532
    .local v8, "outTransaction":Landroid/app/BackStackRecord;
    invoke-static {v9, v6, v11, v7, v8}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    .line 534
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 535
    .local v12, "epicenter":Landroid/graphics/Rect;
    invoke-static {v10, v2, v5, v13}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v16

    .line 537
    .local v16, "epicenterView":Landroid/view/View;
    if-eqz v16, :cond_7

    .line 538
    new-instance v0, Landroid/app/FragmentTransition$2;

    invoke-direct {v0, v12}, Landroid/app/FragmentTransition$2;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 545
    .end local v7    # "outIsPop":Z
    .end local v8    # "outTransaction":Landroid/app/BackStackRecord;
    :cond_7
    nop

    .line 547
    move-object v0, v12

    move-object/from16 v12, v16

    goto :goto_2

    .line 546
    .end local v12    # "epicenter":Landroid/graphics/Rect;
    .end local v16    # "epicenterView":Landroid/view/View;
    :cond_8
    const/4 v0, 0x0

    .line 547
    .local v0, "epicenter":Landroid/graphics/Rect;
    move-object v12, v7

    .line 550
    .local v12, "epicenterView":Landroid/view/View;
    :goto_2
    new-instance v8, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;

    move-object v7, v8

    move-object v1, v8

    move-object v8, v14

    move-object/from16 v16, v9

    move-object v9, v15

    .end local v9    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .local v16, "sharedElementTransition":Landroid/transition/TransitionSet;
    move-object/from16 v17, v10

    move v10, v13

    .end local v10    # "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v17, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v18, v11

    move-object/from16 v11, v17

    .end local v11    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v18, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move/from16 v19, v13

    move-object v13, v0

    .end local v13    # "inIsPop":Z
    .local v19, "inIsPop":Z
    invoke-direct/range {v7 .. v13}, Landroid/app/-$$Lambda$FragmentTransition$jurn0WXuKw3bRQ_2d5zCWdeZWuI;-><init>(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v8, p0

    invoke-static {v8, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 557
    return-object v16

    .line 490
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .end local v12    # "epicenterView":Landroid/view/View;
    .end local v16    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .end local v17    # "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v18    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v19    # "inIsPop":Z
    :cond_9
    :goto_3
    move-object/from16 v8, p0

    return-object v7
.end method

.method private static configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .locals 30
    .param p0, "fragmentManager"    # Landroid/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p4, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v15, p3

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v2}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v14, p1

    invoke-virtual {v2, v14}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    .line 271
    :cond_0
    move/from16 v14, p1

    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v13, "sceneRoot":Landroid/view/ViewGroup;
    :goto_0
    move-object v13, v1

    if-nez v13, :cond_1

    .line 272
    return-void

    .line 274
    :cond_1
    iget-object v12, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 275
    .local v12, "inFragment":Landroid/app/Fragment;
    iget-object v11, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 276
    .local v11, "outFragment":Landroid/app/Fragment;
    iget-boolean v10, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 277
    .local v10, "inIsPop":Z
    iget-boolean v8, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 279
    .local v8, "outIsPop":Z
    invoke-static {v12, v10}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v7

    .line 280
    .local v7, "enterTransition":Landroid/transition/Transition;
    invoke-static {v11, v8}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v5

    .line 282
    .local v5, "exitTransition":Landroid/transition/Transition;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 283
    .local v4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v1, v13

    move-object v2, v15

    move-object/from16 v3, p4

    move-object/from16 v25, v4

    move-object v4, v9

    .end local v4    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v25, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v26, v5

    move-object/from16 v5, v25

    .end local v5    # "exitTransition":Landroid/transition/Transition;
    .local v26, "exitTransition":Landroid/transition/Transition;
    move-object/from16 v27, v7

    .end local v7    # "enterTransition":Landroid/transition/Transition;
    .local v27, "enterTransition":Landroid/transition/Transition;
    move/from16 v28, v8

    move-object/from16 v8, v26

    .end local v8    # "outIsPop":Z
    .local v28, "outIsPop":Z
    invoke-static/range {v1 .. v8}, Landroid/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 289
    .local v1, "sharedElementTransition":Landroid/transition/TransitionSet;
    move-object/from16 v2, v27

    if-nez v2, :cond_2

    .end local v27    # "enterTransition":Landroid/transition/Transition;
    .local v2, "enterTransition":Landroid/transition/Transition;
    if-nez v1, :cond_2

    move-object/from16 v3, v26

    if-nez v3, :cond_3

    .line 291
    .end local v26    # "exitTransition":Landroid/transition/Transition;
    .local v3, "exitTransition":Landroid/transition/Transition;
    return-void

    .line 294
    .end local v3    # "exitTransition":Landroid/transition/Transition;
    .restart local v26    # "exitTransition":Landroid/transition/Transition;
    :cond_2
    move-object/from16 v3, v26

    .end local v26    # "exitTransition":Landroid/transition/Transition;
    .restart local v3    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    move-object/from16 v4, v25

    invoke-static {v3, v11, v4, v15}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 297
    .end local v25    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v4    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 298
    :cond_4
    const/4 v3, 0x0

    .line 301
    :cond_5
    if-eqz v2, :cond_6

    .line 304
    invoke-virtual {v2, v15}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 307
    :cond_6
    iget-boolean v7, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-static {v2, v3, v1, v12, v7}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v7

    .line 310
    .local v7, "transition":Landroid/transition/Transition;
    if-eqz v7, :cond_7

    .line 311
    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v0

    .line 313
    .local v20, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v1

    move-object/from16 v24, v6

    invoke-static/range {v18 .. v24}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    .line 316
    move v0, v10

    move-object v10, v13

    .end local v10    # "inIsPop":Z
    .local v0, "inIsPop":Z
    move-object/from16 v18, v11

    move-object v11, v12

    .end local v11    # "outFragment":Landroid/app/Fragment;
    .local v18, "outFragment":Landroid/app/Fragment;
    move-object/from16 v19, v12

    move-object v12, v15

    .end local v12    # "inFragment":Landroid/app/Fragment;
    .local v19, "inFragment":Landroid/app/Fragment;
    move/from16 v29, v0

    move-object v0, v13

    move-object v13, v6

    .end local v13    # "sceneRoot":Landroid/view/ViewGroup;
    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    .local v29, "inIsPop":Z
    move-object v14, v2

    move-object/from16 v15, v20

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-static/range {v10 .. v17}, Landroid/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 319
    invoke-static {v0, v7}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .end local v20    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    goto :goto_1

    .line 321
    .end local v0    # "sceneRoot":Landroid/view/ViewGroup;
    .end local v18    # "outFragment":Landroid/app/Fragment;
    .end local v19    # "inFragment":Landroid/app/Fragment;
    .end local v29    # "inIsPop":Z
    .restart local v10    # "inIsPop":Z
    .restart local v11    # "outFragment":Landroid/app/Fragment;
    .restart local v12    # "inFragment":Landroid/app/Fragment;
    .restart local v13    # "sceneRoot":Landroid/view/ViewGroup;
    :cond_7
    move-object/from16 v8, p4

    move/from16 v29, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object v0, v13

    .end local v10    # "inIsPop":Z
    .end local v11    # "outFragment":Landroid/app/Fragment;
    .end local v12    # "inFragment":Landroid/app/Fragment;
    .end local v13    # "sceneRoot":Landroid/view/ViewGroup;
    .restart local v0    # "sceneRoot":Landroid/view/ViewGroup;
    .restart local v18    # "outFragment":Landroid/app/Fragment;
    .restart local v19    # "inFragment":Landroid/app/Fragment;
    .restart local v29    # "inIsPop":Z
    :goto_1
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .locals 26
    .param p0, "fragmentManager"    # Landroid/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p4, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v2}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v11, p1

    invoke-virtual {v2, v11}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    .line 199
    :cond_0
    move/from16 v11, p1

    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v12, "sceneRoot":Landroid/view/ViewGroup;
    :goto_0
    move-object v12, v1

    if-nez v12, :cond_1

    .line 200
    return-void

    .line 202
    :cond_1
    iget-object v13, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 203
    .local v13, "inFragment":Landroid/app/Fragment;
    iget-object v14, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 204
    .local v14, "outFragment":Landroid/app/Fragment;
    iget-boolean v15, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 205
    .local v15, "inIsPop":Z
    iget-boolean v8, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 207
    .local v8, "outIsPop":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 208
    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 209
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v13, v15}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v5

    .line 210
    .local v5, "enterTransition":Landroid/transition/Transition;
    invoke-static {v14, v8}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v4

    .line 212
    .local v4, "exitTransition":Landroid/transition/Transition;
    move-object v1, v12

    move-object v2, v10

    move-object/from16 v3, p4

    move-object/from16 v23, v4

    move-object v4, v9

    .end local v4    # "exitTransition":Landroid/transition/Transition;
    .local v23, "exitTransition":Landroid/transition/Transition;
    move-object/from16 v24, v5

    move-object v5, v6

    .end local v5    # "enterTransition":Landroid/transition/Transition;
    .local v24, "enterTransition":Landroid/transition/Transition;
    move-object v0, v6

    move-object v6, v7

    .end local v6    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v0, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v9, v7

    move-object/from16 v7, v24

    .end local v7    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v9, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move/from16 v25, v8

    move-object/from16 v8, v23

    .end local v8    # "outIsPop":Z
    .local v25, "outIsPop":Z
    invoke-static/range {v1 .. v8}, Landroid/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 216
    .local v1, "sharedElementTransition":Landroid/transition/TransitionSet;
    move-object/from16 v2, v24

    if-nez v2, :cond_2

    .end local v24    # "enterTransition":Landroid/transition/Transition;
    .local v2, "enterTransition":Landroid/transition/Transition;
    if-nez v1, :cond_2

    move-object/from16 v3, v23

    if-nez v3, :cond_3

    .line 218
    .end local v23    # "exitTransition":Landroid/transition/Transition;
    .local v3, "exitTransition":Landroid/transition/Transition;
    return-void

    .line 221
    .end local v3    # "exitTransition":Landroid/transition/Transition;
    .restart local v23    # "exitTransition":Landroid/transition/Transition;
    :cond_2
    move-object/from16 v3, v23

    .end local v23    # "exitTransition":Landroid/transition/Transition;
    .restart local v3    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-static {v3, v14, v0, v10}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    .line 224
    .local v4, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v2, v13, v9, v10}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 227
    .local v5, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 229
    invoke-static {v2, v3, v1, v13, v15}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v6

    .line 232
    .local v6, "transition":Landroid/transition/Transition;
    if-eqz v6, :cond_4

    .line 233
    invoke-static {v3, v14, v4}, Landroid/app/FragmentTransition;->replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V

    .line 234
    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    .line 235
    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v1

    move-object/from16 v22, v9

    invoke-static/range {v16 .. v22}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    .line 238
    invoke-static {v12, v6}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 239
    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 241
    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {v1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 243
    invoke-virtual {v1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-static {v1, v0, v9}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 247
    :cond_4
    move-object/from16 v7, p4

    :cond_5
    :goto_1
    return-void
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .line 987
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 988
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 989
    const/4 v0, 0x1

    return v0

    .line 987
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;
    .locals 1
    .param p0, "containerTransition"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1344
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_0

    .line 1345
    new-instance v0, Landroid/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v0}, Landroid/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object p0, v0

    .line 1346
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1348
    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 814
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 815
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 816
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 815
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "isPop"    # Z

    .line 423
    if-nez p0, :cond_0

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 426
    :goto_0
    invoke-static {v0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method private static getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "outFragment"    # Landroid/app/Fragment;
    .param p1, "isPop"    # Z

    .line 434
    if-nez p0, :cond_0

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 437
    :goto_0
    invoke-static {v0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method private static getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .locals 3
    .param p1, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/transition/Transition;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 835
    .local p0, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p1, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 836
    .local v0, "inTransaction":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 839
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 840
    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 841
    :cond_0
    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 842
    .local v1, "targetName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 844
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;
    .locals 2
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "isPop"    # Z

    .line 405
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    if-eqz p2, :cond_1

    .line 409
    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    .line 408
    :goto_0
    invoke-static {v1}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    .line 411
    .local v1, "transition":Landroid/transition/Transition;
    if-nez v1, :cond_2

    .line 412
    return-object v0

    .line 414
    :cond_2
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 415
    .local v0, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 416
    return-object v0

    .line 406
    .end local v0    # "transitionSet":Landroid/transition/TransitionSet;
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;

    .line 1085
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1085
    :goto_1
    return v0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 1094
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$configureSharedElementsOrdered$3(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "nameOverrides"    # Landroid/util/ArrayMap;
    .param p1, "finalSharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "sharedElementsIn"    # Ljava/util/ArrayList;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .param p5, "inFragment"    # Landroid/app/Fragment;
    .param p6, "outFragment"    # Landroid/app/Fragment;
    .param p7, "inIsPop"    # Z
    .param p8, "sharedElementsOut"    # Ljava/util/ArrayList;
    .param p9, "enterTransition"    # Landroid/transition/Transition;
    .param p10, "inEpicenter"    # Landroid/graphics/Rect;

    .line 666
    invoke-static {p0, p1, p2}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 669
    .local v0, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 671
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_0
    const/4 v1, 0x0

    invoke-static {p5, p6, p7, v0, v1}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 676
    if-eqz p1, :cond_1

    .line 677
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 678
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 679
    invoke-static {p1, p8, p3}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 682
    invoke-static {v0, p2, p9, p7}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v1

    .line 684
    .local v1, "inEpicenterView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 685
    invoke-virtual {v1, p10}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 688
    .end local v1    # "inEpicenterView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic lambda$configureSharedElementsReordered$2(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "inIsPop"    # Z
    .param p3, "inSharedElements"    # Landroid/util/ArrayMap;
    .param p4, "epicenterView"    # Landroid/view/View;
    .param p5, "epicenter"    # Landroid/graphics/Rect;

    .line 551
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 553
    if-eqz p4, :cond_0

    .line 554
    invoke-virtual {p4, p5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 556
    :cond_0
    return-void
.end method

.method static synthetic lambda$replaceHide$0(Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "exitingViews"    # Ljava/util/ArrayList;

    .line 335
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 336
    return-void
.end method

.method static synthetic lambda$scheduleTargetChange$1(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 1
    .param p0, "enterTransition"    # Landroid/transition/Transition;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "sharedElementsIn"    # Ljava/util/ArrayList;
    .param p4, "enteringViews"    # Ljava/util/ArrayList;
    .param p5, "exitingViews"    # Ljava/util/ArrayList;
    .param p6, "exitTransition"    # Landroid/transition/Transition;

    .line 372
    if-eqz p0, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 374
    invoke-static {p0, p2, p3, p1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 376
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    if-eqz p5, :cond_2

    .line 380
    if-eqz p6, :cond_1

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {p6, p5, v0}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 385
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    .line 386
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_2
    return-void
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 4
    .param p0, "enterTransition"    # Landroid/transition/Transition;
    .param p1, "exitTransition"    # Landroid/transition/Transition;
    .param p2, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .param p4, "isPop"    # Z

    .line 1137
    const/4 v0, 0x1

    .line 1138
    .local v0, "overlap":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1139
    if-eqz p4, :cond_0

    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_0

    .line 1140
    :cond_0
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :goto_0
    move v0, v1

    .line 1148
    :cond_1
    if-eqz v0, :cond_5

    .line 1150
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 1151
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz p0, :cond_2

    .line 1152
    invoke-virtual {v1, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1154
    :cond_2
    if-eqz p1, :cond_3

    .line 1155
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1157
    :cond_3
    if-eqz p2, :cond_4

    .line 1158
    invoke-virtual {v1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1160
    :cond_4
    nop

    .line 1161
    .local v1, "transition":Landroid/transition/Transition;
    goto :goto_2

    .line 1164
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_5
    const/4 v1, 0x0

    .line 1165
    .local v1, "staggered":Landroid/transition/Transition;
    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    .line 1166
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 1167
    invoke-virtual {v2, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    .line 1168
    invoke-virtual {v2, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    const/4 v3, 0x1

    .line 1169
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v1

    goto :goto_1

    .line 1170
    :cond_6
    if-eqz p1, :cond_7

    .line 1171
    move-object v1, p1

    goto :goto_1

    .line 1172
    :cond_7
    if-eqz p0, :cond_8

    .line 1173
    move-object v1, p0

    .line 1175
    :cond_8
    :goto_1
    if-eqz p2, :cond_a

    .line 1176
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 1177
    .local v2, "together":Landroid/transition/TransitionSet;
    if-eqz v1, :cond_9

    .line 1178
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1180
    :cond_9
    invoke-virtual {v2, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1181
    nop

    .line 1182
    .local v2, "transition":Landroid/transition/Transition;
    nop

    .line 1183
    move-object v1, v2

    nop

    .line 1186
    .end local v2    # "transition":Landroid/transition/Transition;
    .local v1, "transition":Landroid/transition/Transition;
    :cond_a
    :goto_2
    return-object v1
.end method

.method private static replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "exitTransition"    # Landroid/transition/Transition;
    .param p1, "exitingFragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setHideReplaced(Z)V

    .line 333
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "fragmentView":Landroid/view/View;
    iget-object v1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/app/-$$Lambda$FragmentTransition$PZ32bJ_FSMpbzYzBl8x73NJPidQ;

    invoke-direct {v2, p2}, Landroid/app/-$$Lambda$FragmentTransition$PZ32bJ_FSMpbzYzBl8x73NJPidQ;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 337
    new-instance v1, Landroid/app/FragmentTransition$1;

    invoke-direct {v1, v0, p2}, Landroid/app/FragmentTransition$1;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 346
    .end local v0    # "fragmentView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1027
    .local p1, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v0, p0, Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1028
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 1029
    .local v0, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1030
    .local v2, "numTransitions":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1031
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v3

    .line 1032
    .local v3, "child":Landroid/transition/Transition;
    invoke-static {v3, p1, p2}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1030
    .end local v3    # "child":Landroid/transition/Transition;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1034
    .end local v0    # "set":Landroid/transition/TransitionSet;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    :cond_0
    goto :goto_4

    :cond_1
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1035
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 1036
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1037
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1039
    if-nez p2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1040
    .local v2, "targetCount":I
    :goto_1
    nop

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 1041
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1040
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1043
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 1044
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1043
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1048
    .end local v0    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v1    # "i":I
    .end local v2    # "targetCount":I
    :cond_4
    :goto_4
    return-void
.end method

.method private static retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 897
    .local p0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 898
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 899
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 900
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 897
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 903
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "overalTransition"    # Landroid/transition/Transition;
    .param p1, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "exitTransition"    # Landroid/transition/Transition;
    .param p5, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1003
    .local p2, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p4, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v7, Landroid/app/FragmentTransition$5;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/FragmentTransition$5;-><init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v7}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1017
    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "inFragment"    # Landroid/app/Fragment;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "enterTransition"    # Landroid/transition/Transition;
    .param p6, "exitTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v8, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;

    move-object v0, v8

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object/from16 v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/-$$Lambda$FragmentTransition$8Ei4ls5jlZcfRvuLcweFAxtFBFs;-><init>(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    move-object v0, p0

    invoke-static {v0, v8}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 389
    return-void
.end method

.method private static setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "view"    # Landroid/view/View;

    .line 877
    if-eqz p1, :cond_0

    .line 878
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 879
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 881
    new-instance v1, Landroid/app/FragmentTransition$4;

    invoke-direct {v1, v0}, Landroid/app/FragmentTransition$4;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 888
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private static setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V
    .locals 2
    .param p0, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p1, "exitTransition"    # Landroid/transition/Transition;
    .param p3, "outIsPop"    # Z
    .param p4, "outTransaction"    # Landroid/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/transition/Transition;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 859
    .local p2, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 860
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 862
    iget-object v1, p4, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 863
    :cond_0
    iget-object v1, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    .local v0, "sourceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 865
    .local v1, "outEpicenterView":Landroid/view/View;
    invoke-static {p0, v1}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 867
    if-eqz p1, :cond_1

    .line 868
    invoke-static {p1, v1}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 871
    .end local v0    # "sourceName":Ljava/lang/String;
    .end local v1    # "outEpicenterView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "transition"    # Landroid/transition/TransitionSet;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 945
    .local p2, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 946
    .local v0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 947
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 948
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 949
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 950
    .local v3, "view":Landroid/view/View;
    invoke-static {v0, v3}, Landroid/app/FragmentTransition;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 948
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v2    # "i":I
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-static {p0, p2}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 955
    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1121
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    .line 1122
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1125
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1126
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1128
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .param p0, "fragmentManager"    # Landroid/app/FragmentManagerImpl;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 90
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 95
    .local v0, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 96
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    .line 97
    .local v2, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 98
    .local v3, "isPop":Z
    if-eqz v3, :cond_1

    .line 99
    invoke-static {v2, v0, p5}, Landroid/app/FragmentTransition;->calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 101
    :cond_1
    invoke-static {v2, v0, p5}, Landroid/app/FragmentTransition;->calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 95
    .end local v2    # "record":Landroid/app/BackStackRecord;
    .end local v3    # "isPop":Z
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "nonExistentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 108
    .local v2, "numContainers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 109
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 110
    .local v4, "containerId":I
    invoke-static {v4, p1, p2, p3, p4}, Landroid/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;

    move-result-object v5

    .line 113
    .local v5, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/FragmentTransition$FragmentContainerTransition;

    .line 115
    .local v6, "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    if-eqz p5, :cond_3

    .line 116
    invoke-static {p0, v4, v6, v1, v5}, Landroid/app/FragmentTransition;->configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    goto :goto_3

    .line 119
    :cond_3
    invoke-static {p0, v4, v6, v1, v5}, Landroid/app/FragmentTransition;->configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    .line 108
    .end local v4    # "containerId":I
    .end local v5    # "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    .end local v1    # "nonExistentView":Landroid/view/View;
    .end local v2    # "numContainers":I
    .end local v3    # "i":I
    :cond_4
    return-void
.end method
