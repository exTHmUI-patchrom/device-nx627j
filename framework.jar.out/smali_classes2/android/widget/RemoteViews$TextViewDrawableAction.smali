.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field d1:I

.field d2:I

.field d3:I

.field d4:I

.field drawablesLoaded:Z

.field i1:Landroid/graphics/drawable/Icon;

.field i2:Landroid/graphics/drawable/Icon;

.field i3:Landroid/graphics/drawable/Icon;

.field i4:Landroid/graphics/drawable/Icon;

.field id1:Landroid/graphics/drawable/Drawable;

.field id2:Landroid/graphics/drawable/Drawable;

.field id3:Landroid/graphics/drawable/Drawable;

.field id4:Landroid/graphics/drawable/Drawable;

.field isRelative:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field useIcons:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIIII)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "d1"    # I
    .param p5, "d2"    # I
    .param p6, "d3"    # I
    .param p7, "d4"    # I

    .line 1815
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1947
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1948
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1952
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 1816
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1817
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1818
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1819
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 1820
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 1821
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 1822
    iput p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    .line 1823
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "i1"    # Landroid/graphics/drawable/Icon;
    .param p5, "i2"    # Landroid/graphics/drawable/Icon;
    .param p6, "i3"    # Landroid/graphics/drawable/Icon;
    .param p7, "i4"    # Landroid/graphics/drawable/Icon;

    .line 1826
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1947
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1948
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1952
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 1827
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1828
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1829
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1830
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    .line 1831
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    .line 1832
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    .line 1833
    iput-object p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    .line 1834
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1836
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1947
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1948
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1952
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 1837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1838
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move p1, v1

    nop

    :cond_1
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1840
    iget-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz p1, :cond_2

    .line 1841
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    .line 1842
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    .line 1843
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    .line 1844
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    goto :goto_1

    .line 1846
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 1847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 1848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 1849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    .line 1851
    :goto_1
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1872
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1873
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    return-void

    .line 1874
    :cond_0
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    if-eqz v1, :cond_2

    .line 1875
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v1, :cond_1

    .line 1876
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1878
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1880
    :cond_2
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v1, :cond_8

    .line 1881
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1882
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1883
    .local v2, "id1":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1884
    .local v4, "id2":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5

    move-object v5, v3

    goto :goto_2

    :cond_5
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1885
    .local v5, "id3":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1886
    .local v3, "id4":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v6, :cond_7

    .line 1887
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1889
    :cond_7
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1891
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id4":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v5    # "id3":Landroid/graphics/drawable/Drawable;
    :goto_4
    goto :goto_5

    .line 1892
    :cond_8
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v1, :cond_9

    .line 1893
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_5

    .line 1895
    :cond_9
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1898
    :goto_5
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 1934
    const/16 v0, 0xb

    return v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 20
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, p0

    .line 1902
    iget v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1903
    .local v1, "target":Landroid/widget/TextView;
    if-nez v1, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->access$600()Landroid/widget/RemoteViews$Action;

    move-result-object v3

    return-object v3

    .line 1905
    :cond_0
    iget-boolean v3, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v3, :cond_1

    .line 1906
    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    iget v6, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iget-boolean v7, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iget-object v8, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    iget-object v9, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    iget-object v10, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    iget-object v11, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    .line 1907
    :cond_1
    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget-object v13, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    iget v14, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iget-boolean v15, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iget v4, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v6, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v7, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    move-object v12, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    .line 1910
    .local v3, "copy":Landroid/widget/RemoteViews$TextViewDrawableAction;
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 1911
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1913
    .local v4, "ctx":Landroid/content/Context;
    iget-boolean v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 1914
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    .line 1915
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_2

    :cond_3
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    .line 1916
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_3

    :cond_4
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_3
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    .line 1917
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_4
    iput-object v6, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    .line 1919
    :cond_6
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    if-nez v5, :cond_7

    move-object v5, v6

    goto :goto_5

    :cond_7
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_5
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    .line 1920
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    if-nez v5, :cond_8

    move-object v5, v6

    goto :goto_6

    :cond_8
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_6
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    .line 1921
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    if-nez v5, :cond_9

    move-object v5, v6

    goto :goto_7

    :cond_9
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_7
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    .line 1922
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_8
    iput-object v6, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    .line 1924
    :goto_9
    return-object v3
.end method

.method public prefersAsyncApply()Z
    .locals 1

    .line 1929
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    return v0
.end method

.method public visitUris(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1939
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$700(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 1941
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$700(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 1942
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$700(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 1943
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$700(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 1945
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1854
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1859
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1860
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1861
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1863
    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1865
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1868
    :goto_0
    return-void
.end method
