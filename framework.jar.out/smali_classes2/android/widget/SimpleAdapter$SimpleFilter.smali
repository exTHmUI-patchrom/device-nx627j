.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/SimpleAdapter;)V
    .locals 0

    .line 359
    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/SimpleAdapter;
    .param p2, "x1"    # Landroid/widget/SimpleAdapter$1;

    .line 359
    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    .line 363
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 365
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v2}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 366
    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v4}, Landroid/widget/SimpleAdapter;->access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Landroid/widget/SimpleAdapter;->access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 369
    :cond_0
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_4

    .line 374
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "prefixString":Ljava/lang/String;
    iget-object v4, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v4}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    .line 377
    .local v4, "unfilteredValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 379
    .local v5, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v6, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_5

    .line 382
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 383
    .local v9, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v9, :cond_4

    .line 385
    iget-object v10, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v10}, Landroid/widget/SimpleAdapter;->access$300(Landroid/widget/SimpleAdapter;)[I

    move-result-object v10

    array-length v10, v10

    .line 387
    .local v10, "len":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v10, :cond_4

    .line 388
    iget-object v12, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v12}, Landroid/widget/SimpleAdapter;->access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 390
    .local v12, "str":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 391
    .local v13, "words":[Ljava/lang/String;
    array-length v14, v13

    .line 393
    .local v14, "wordCount":I
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_2
    if-ge v15, v14, :cond_3

    .line 394
    aget-object v7, v13, v15

    .line 396
    .local v7, "word":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    goto :goto_3

    .line 393
    .end local v7    # "word":Ljava/lang/String;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 387
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "words":[Ljava/lang/String;
    .end local v14    # "wordCount":I
    .end local v15    # "k":I
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 381
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v10    # "len":I
    .end local v11    # "j":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 405
    .end local v8    # "i":I
    :cond_5
    iput-object v6, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 406
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .end local v3    # "prefixString":Ljava/lang/String;
    .end local v4    # "unfilteredValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v5    # "count":I
    .end local v6    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    goto :goto_5

    .line 370
    :cond_6
    :goto_4
    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v2}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 371
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 372
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 373
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    nop

    .line 409
    :goto_5
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 415
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Landroid/widget/SimpleAdapter;->access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;

    .line 416
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    .line 421
    :goto_0
    return-void
.end method
