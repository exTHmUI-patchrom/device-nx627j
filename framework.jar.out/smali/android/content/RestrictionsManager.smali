.class public Landroid/content/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final ACTION_PERMISSION_RESPONSE_RECEIVED:Ljava/lang/String; = "android.content.action.PERMISSION_RESPONSE_RECEIVED"

.field public static final ACTION_REQUEST_LOCAL_APPROVAL:Ljava/lang/String; = "android.content.action.REQUEST_LOCAL_APPROVAL"

.field public static final ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "android.content.action.REQUEST_PERMISSION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final EXTRA_REQUEST_BUNDLE:Ljava/lang/String; = "android.content.extra.REQUEST_BUNDLE"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.content.extra.REQUEST_ID"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "android.content.extra.REQUEST_TYPE"

.field public static final EXTRA_RESPONSE_BUNDLE:Ljava/lang/String; = "android.content.extra.RESPONSE_BUNDLE"

.field public static final META_DATA_APP_RESTRICTIONS:Ljava/lang/String; = "android.content.APP_RESTRICTIONS"

.field public static final REQUEST_KEY_APPROVE_LABEL:Ljava/lang/String; = "android.request.approve_label"

.field public static final REQUEST_KEY_DATA:Ljava/lang/String; = "android.request.data"

.field public static final REQUEST_KEY_DENY_LABEL:Ljava/lang/String; = "android.request.deny_label"

.field public static final REQUEST_KEY_ICON:Ljava/lang/String; = "android.request.icon"

.field public static final REQUEST_KEY_ID:Ljava/lang/String; = "android.request.id"

.field public static final REQUEST_KEY_MESSAGE:Ljava/lang/String; = "android.request.mesg"

.field public static final REQUEST_KEY_NEW_REQUEST:Ljava/lang/String; = "android.request.new_request"

.field public static final REQUEST_KEY_TITLE:Ljava/lang/String; = "android.request.title"

.field public static final REQUEST_TYPE_APPROVAL:Ljava/lang/String; = "android.request.type.approval"

.field public static final RESPONSE_KEY_ERROR_CODE:Ljava/lang/String; = "android.response.errorcode"

.field public static final RESPONSE_KEY_MESSAGE:Ljava/lang/String; = "android.response.msg"

.field public static final RESPONSE_KEY_RESPONSE_TIMESTAMP:Ljava/lang/String; = "android.response.timestamp"

.field public static final RESPONSE_KEY_RESULT:Ljava/lang/String; = "android.response.result"

.field public static final RESULT_APPROVED:I = 0x1

.field public static final RESULT_DENIED:I = 0x2

.field public static final RESULT_ERROR:I = 0x5

.field public static final RESULT_ERROR_BAD_REQUEST:I = 0x1

.field public static final RESULT_ERROR_INTERNAL:I = 0x3

.field public static final RESULT_ERROR_NETWORK:I = 0x2

.field public static final RESULT_NO_RESPONSE:I = 0x3

.field public static final RESULT_UNKNOWN_REQUEST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RestrictionsManager"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/IRestrictionsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/IRestrictionsManager;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 412
    iput-object p2, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    .line 413
    return-void
.end method

.method private static addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;

    .line 702
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported restrictionEntry type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 725
    .local v0, "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    array-length v1, v0

    new-array v1, v1, [Landroid/os/Bundle;

    .line 726
    .local v1, "bundleArray":[Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 727
    aget-object v3, v0, v2

    .line 728
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v3

    .line 729
    .local v3, "bundleRestrictions":[Landroid/content/RestrictionEntry;
    if-nez v3, :cond_0

    .line 731
    const-string v4, "RestrictionsManager"

    const-string v5, "addRestrictionToBundle: Non-bundle entry found in bundle array"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v1, v2

    goto :goto_1

    .line 735
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v1, v2

    .line 726
    .end local v3    # "bundleRestrictions":[Landroid/content/RestrictionEntry;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 739
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 740
    goto :goto_2

    .line 719
    .end local v0    # "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    .end local v1    # "bundleArray":[Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 720
    .local v0, "restrictions":[Landroid/content/RestrictionEntry;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    .line 721
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 722
    goto :goto_2

    .line 712
    .end local v0    # "restrictions":[Landroid/content/RestrictionEntry;
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    goto :goto_2

    .line 709
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 710
    goto :goto_2

    .line 704
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 705
    goto :goto_2

    .line 716
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    nop

    .line 745
    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 694
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 695
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    .line 696
    .local v2, "entry":Landroid/content/RestrictionEntry;
    invoke-static {v0, v2}, Landroid/content/RestrictionsManager;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    .line 697
    .end local v2    # "entry":Landroid/content/RestrictionEntry;
    goto :goto_0

    .line 698
    :cond_0
    return-object v0
.end method

.method private loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 557
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 560
    .local v1, "appContext":Landroid/content/Context;
    nop

    .line 559
    nop

    .line 561
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v2, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .line 566
    .local v3, "tagType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 567
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 568
    invoke-direct {p0, v1, p2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v4

    .line 569
    .local v4, "restriction":Landroid/content/RestrictionEntry;
    if-eqz v4, :cond_0

    .line 570
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v4    # "restriction":Landroid/content/RestrictionEntry;
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    goto :goto_0

    .line 581
    .end local v3    # "tagType":I
    :cond_1
    nop

    .line 583
    return-object v2

    .line 578
    :catch_0
    move-exception v3

    .line 579
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "RestrictionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading restriction metadata for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    return-object v0

    .line 575
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 576
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "RestrictionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading restriction metadata for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    return-object v0

    .line 558
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 559
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v0
.end method

.method private loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 17
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 601
    move-object/from16 v2, p3

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "key":Ljava/lang/String;
    const/4 v4, -0x1

    const/4 v5, 0x6

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 604
    .local v5, "restrictionType":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, "title":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 606
    .local v8, "description":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 607
    .local v9, "entries":I
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 609
    .local v10, "entryValues":I
    const/4 v11, 0x0

    if-ne v5, v4, :cond_0

    .line 610
    const-string v4, "RestrictionsManager"

    const-string/jumbo v7, "restrictionType cannot be omitted"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-object v11

    .line 614
    :cond_0
    if-nez v3, :cond_1

    .line 615
    const-string v4, "RestrictionsManager"

    const-string/jumbo v7, "key cannot be omitted"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-object v11

    .line 619
    :cond_1
    new-instance v4, Landroid/content/RestrictionEntry;

    invoke-direct {v4, v5, v3}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .line 620
    .local v4, "restriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v4, v6}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v4, v8}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 622
    if-eqz v9, :cond_2

    .line 623
    invoke-virtual {v4, v0, v9}, Landroid/content/RestrictionEntry;->setChoiceEntries(Landroid/content/Context;I)V

    .line 625
    :cond_2
    if-eqz v10, :cond_3

    .line 626
    invoke-virtual {v4, v0, v10}, Landroid/content/RestrictionEntry;->setChoiceValues(Landroid/content/Context;I)V

    .line 629
    :cond_3
    const/4 v11, 0x4

    packed-switch v5, :pswitch_data_0

    .line 672
    :pswitch_0
    move-object/from16 v12, p0

    const-string v2, "RestrictionsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown restriction type "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 653
    :pswitch_1
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 654
    .local v7, "outerDepth":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v11, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :goto_0
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 656
    move-object/from16 v12, p0

    invoke-direct {v12, v0, v2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v13

    .line 657
    .local v13, "childEntry":Landroid/content/RestrictionEntry;
    if-nez v13, :cond_4

    .line 658
    const-string v14, "RestrictionsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child entry cannot be loaded for bundle restriction "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 660
    :cond_4
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    const/16 v2, 0x8

    if-ne v5, v2, :cond_5

    .line 662
    invoke-virtual {v13}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    const/4 v14, 0x7

    if-eq v2, v14, :cond_5

    .line 663
    const-string v2, "RestrictionsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bundle_array "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " can only contain entries of type bundle"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v13    # "childEntry":Landroid/content/RestrictionEntry;
    :cond_5
    :goto_1
    nop

    .line 654
    move-object/from16 v2, p3

    goto :goto_0

    .line 668
    :cond_6
    move-object/from16 v12, p0

    .line 669
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/RestrictionEntry;

    .line 668
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/RestrictionEntry;

    invoke-virtual {v4, v2}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    .line 670
    goto :goto_2

    .line 637
    .end local v7    # "outerDepth":I
    .end local v11    # "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :pswitch_2
    move-object/from16 v12, p0

    .line 638
    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 637
    invoke-virtual {v4, v2}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    .line 639
    goto :goto_2

    .line 641
    :pswitch_3
    move-object/from16 v12, p0

    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 642
    .local v2, "resId":I
    if-eqz v2, :cond_7

    .line 643
    nop

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 643
    invoke-virtual {v4, v7}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_2

    .line 648
    .end local v2    # "resId":I
    :pswitch_4
    move-object/from16 v12, p0

    .line 649
    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 648
    invoke-virtual {v4, v2}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 650
    goto :goto_2

    .line 633
    :pswitch_5
    move-object/from16 v12, p0

    .line 634
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-virtual {v4, v2}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 635
    nop

    .line 674
    :cond_7
    :goto_2
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 588
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "restriction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 590
    .local v0, "attrSet":Landroid/util/AttributeSet;
    if-eqz v0, :cond_0

    .line 591
    sget-object v1, Lcom/android/internal/R$styleable;->RestrictionEntry:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 593
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v1, p2}, Landroid/content/RestrictionsManager;->loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v2

    return-object v2

    .line 596
    .end local v0    # "attrSet":Landroid/util/AttributeSet;
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .locals 2

    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v0}, Landroid/content/IRestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 493
    :cond_0
    nop

    .line 494
    const/4 v0, 0x0

    return-object v0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationRestrictions()Landroid/os/Bundle;
    .locals 2

    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 428
    :cond_0
    nop

    .line 429
    const/4 v0, 0x0

    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    move-object v1, v0

    .line 539
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 543
    nop

    .line 544
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.content.APP_RESTRICTIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.content.APP_RESTRICTIONS"

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 550
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, p1, v0}, Landroid/content/RestrictionsManager;->loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 545
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_0
    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasRestrictionsProvider()Z
    .locals 2

    .line 440
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v0}, Landroid/content/IRestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 445
    :cond_0
    nop

    .line 446
    const/4 v0, 0x0

    return v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/PersistableBundle;

    .line 507
    if-eqz p1, :cond_4

    .line 510
    if-eqz p2, :cond_3

    .line 513
    const-string v0, "android.request.id"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    const-string v0, "android.response.result"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v0, p1, p2}, Landroid/content/IRestrictionsManager;->notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_0
    nop

    .line 526
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 517
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RESPONSE_KEY_RESULT must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "REQUEST_KEY_ID must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/os/PersistableBundle;

    .line 467
    if-eqz p1, :cond_3

    .line 470
    if-eqz p2, :cond_2

    .line 473
    if-eqz p3, :cond_1

    .line 477
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IRestrictionsManager;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    nop

    .line 484
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 474
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
