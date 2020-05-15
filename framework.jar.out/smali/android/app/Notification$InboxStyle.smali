.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# static fields
.field private static final NUMBER_OF_HISTORY_ALLOWED_UNTIL_REDUCTION:I = 0x1


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7629
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 7627
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 7630
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7636
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 7627
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 7637
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 7638
    return-void
.end method

.method private handleInboxImageMargin(Landroid/widget/RemoteViews;IZI)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "first"    # Z
    .param p4, "marginEndValue"    # I

    .line 7806
    const/4 v0, 0x0

    .line 7807
    .local v0, "endMargin":I
    if-eqz p3, :cond_2

    .line 7808
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.progressMax"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7809
    .local v1, "max":I
    iget-object v2, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.progressIndeterminate"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 7810
    .local v2, "ind":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 7811
    .local v3, "hasProgress":Z
    :goto_1
    if-nez v3, :cond_2

    .line 7812
    move v0, p4

    .line 7815
    .end local v1    # "max":I
    .end local v2    # "ind":Z
    .end local v3    # "hasProgress":Z
    :cond_2
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 7816
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7676
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 7678
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 7679
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string v1, "android.textLines"

    iget-object v2, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 7680
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 7661
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7662
    return-object p0
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 9
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 7782
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 7785
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$InboxStyle;

    .line 7787
    .local v1, "newS":Landroid/app/Notification$InboxStyle;
    invoke-virtual {p0}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object v2

    .line 7788
    .local v2, "myLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object v3

    .line 7789
    .local v3, "newLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7790
    .local v4, "n":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 7791
    return v0

    .line 7794
    :cond_1
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 7795
    nop

    .line 7796
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7797
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7795
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 7798
    return v0

    .line 7794
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7801
    .end local v6    # "i":I
    :cond_3
    return v5

    .line 7783
    .end local v1    # "newS":Landroid/app/Notification$InboxStyle;
    .end local v2    # "myLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "newLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "n":I
    :cond_4
    :goto_1
    return v0
.end method

.method public getLines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 7669
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 21

    .line 7701
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7702
    .local v1, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.text"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7704
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v4}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 7705
    .local v2, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v3, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/app/Notification$InboxStyle;->getStandardView(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 7707
    .local v3, "contentView":Landroid/widget/RemoteViews;
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.text"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7709
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    move-object v10, v4

    .line 7713
    .local v10, "rowIds":[I
    array-length v4, v10

    const/4 v11, 0x0

    move v5, v11

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v10, v5

    .line 7714
    .local v6, "rowId":I
    const/16 v7, 0x8

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7713
    .end local v6    # "rowId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7717
    :cond_0
    const/4 v4, 0x0

    .line 7718
    .local v4, "i":I
    iget-object v5, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050145

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 7720
    .local v12, "topPadding":I
    const/4 v5, 0x1

    .line 7721
    .local v5, "first":Z
    const/4 v6, 0x0

    .line 7722
    .local v6, "onlyViewId":I
    array-length v7, v10

    .line 7723
    .local v7, "maxRows":I
    iget-object v8, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->access$2700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 7724
    add-int/lit8 v7, v7, -0x1

    .line 7726
    :cond_1
    iget-object v8, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.remoteInputHistory"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 7728
    .local v13, "remoteInputHistory":[Ljava/lang/CharSequence;
    if-eqz v13, :cond_3

    array-length v8, v13

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 7732
    array-length v8, v13

    const/4 v14, 0x3

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 7734
    .local v8, "numRemoteInputs":I
    iget-object v14, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v14, v8

    sub-int/2addr v14, v9

    .line 7736
    .local v14, "totalNumRows":I
    if-le v14, v7, :cond_3

    .line 7737
    sub-int v9, v14, v7

    .line 7738
    .local v9, "overflow":I
    iget-object v15, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v7, :cond_2

    .line 7741
    sub-int/2addr v7, v9

    goto :goto_1

    .line 7744
    :cond_2
    move v4, v9

    .line 7748
    .end local v4    # "i":I
    .end local v5    # "first":Z
    .end local v6    # "onlyViewId":I
    .end local v7    # "maxRows":I
    .end local v8    # "numRemoteInputs":I
    .local v9, "first":Z
    .local v14, "i":I
    .local v15, "maxRows":I
    .local v16, "onlyViewId":I
    :cond_3
    :goto_1
    move v14, v4

    move v9, v5

    move/from16 v16, v6

    move v15, v7

    :goto_2
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_6

    if-ge v14, v15, :cond_6

    .line 7749
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    .line 7750
    .local v8, "str":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 7751
    aget v4, v10, v14

    invoke-virtual {v3, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7752
    aget v4, v10, v14

    iget-object v5, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 7753
    invoke-static {v6, v8}, Landroid/app/Notification$Builder;->access$2300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/Notification$Builder;->access$2400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 7752
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7754
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    aget v5, v10, v14

    invoke-static {v4, v3, v5}, Landroid/app/Notification$Builder;->access$2500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V

    .line 7755
    aget v5, v10, v14

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v4, v3

    move v7, v12

    move-object/from16 v19, v8

    move/from16 v8, v17

    .end local v8    # "str":Ljava/lang/CharSequence;
    .local v19, "str":Ljava/lang/CharSequence;
    move v11, v9

    move/from16 v9, v18

    .end local v9    # "first":Z
    .local v11, "first":Z
    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 7756
    aget v4, v10, v14

    .line 7757
    invoke-virtual {v2}, Landroid/app/Notification$TemplateBindResult;->getIconMarginEnd()I

    move-result v5

    .line 7756
    invoke-direct {v0, v3, v4, v11, v5}, Landroid/app/Notification$InboxStyle;->handleInboxImageMargin(Landroid/widget/RemoteViews;IZI)V

    .line 7758
    if-eqz v11, :cond_4

    .line 7759
    aget v4, v10, v14

    .line 7763
    .end local v16    # "onlyViewId":I
    .local v4, "onlyViewId":I
    :goto_3
    move/from16 v16, v4

    goto :goto_4

    .line 7761
    .end local v4    # "onlyViewId":I
    .restart local v16    # "onlyViewId":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 7763
    :goto_4
    const/4 v4, 0x0

    .line 7765
    .end local v11    # "first":Z
    .local v4, "first":Z
    move v9, v4

    goto :goto_5

    .end local v4    # "first":Z
    .end local v19    # "str":Ljava/lang/CharSequence;
    .restart local v8    # "str":Ljava/lang/CharSequence;
    .restart local v9    # "first":Z
    :cond_5
    move-object/from16 v19, v8

    move v11, v9

    .end local v8    # "str":Ljava/lang/CharSequence;
    .restart local v19    # "str":Ljava/lang/CharSequence;
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 7766
    .end local v19    # "str":Ljava/lang/CharSequence;
    nop

    .line 7748
    const/4 v11, 0x0

    goto :goto_2

    .line 7767
    :cond_6
    move v11, v9

    .end local v9    # "first":Z
    .restart local v11    # "first":Z
    if-eqz v16, :cond_7

    .line 7769
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050156

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 7771
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move/from16 v5, v16

    move v7, v12

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 7774
    :cond_7
    return-object v3

    :array_0
    .array-data 4
        0x10202a7
        0x10202a8
        0x10202a9
        0x10202aa
        0x10202ab
        0x10202ac
        0x10202ad
    .end array-data
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7687
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 7689
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7690
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7691
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    const-string v1, "android.textLines"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7693
    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 7645
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 7646
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 7653
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 7654
    return-object p0
.end method
