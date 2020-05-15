.class public Landroid/content/ClipData;
.super Ljava/lang/Object;
.source "ClipData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$Item;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field static final MIMETYPES_TEXT_HTML:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_URILIST:[Ljava/lang/String;


# instance fields
.field final mClipDescription:Landroid/content/ClipDescription;

.field final mIcon:Landroid/graphics/Bitmap;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    const-string/jumbo v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "text/html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    .line 166
    const-string/jumbo v0, "text/uri-list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "text/vnd.android.intent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    .line 1165
    new-instance v0, Landroid/content/ClipData$1;

    invoke-direct {v0}, Landroid/content/ClipData$1;-><init>()V

    sput-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;)V
    .locals 2
    .param p1, "other"    # Landroid/content/ClipData;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iget-object v0, p1, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 750
    iget-object v0, p1, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 752
    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 716
    if-eqz p2, :cond_0

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 721
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    return-void

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "description"    # Landroid/content/ClipDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipDescription;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipData$Item;",
            ">;)V"
        }
    .end annotation

    .line 733
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 735
    if-eqz p2, :cond_0

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 739
    iput-object p2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 740
    return-void

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    new-instance v0, Landroid/content/ClipDescription;

    invoke-direct {v0, p1}, Landroid/content/ClipDescription;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 1149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1150
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1152
    :cond_0
    iput-object v1, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 1154
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 1155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1156
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1157
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1158
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, "htmlText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    goto :goto_2

    :cond_1
    move-object v5, v1

    .line 1160
    .local v5, "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    goto :goto_3

    :cond_2
    move-object v6, v1

    .line 1161
    .local v6, "uri":Landroid/net/Uri;
    :goto_3
    iget-object v7, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/ClipData$Item;

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "htmlText":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1163
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "item"    # Landroid/content/ClipData$Item;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    new-instance v0, Landroid/content/ClipDescription;

    invoke-direct {v0, p1, p2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 700
    if-eqz p3, :cond_0

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 705
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    return-void

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "mimeTypes":[Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "realType":Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 826
    if-eqz v1, :cond_1

    .line 827
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 828
    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    move-object v0, v3

    goto :goto_0

    .line 829
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 830
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 831
    .local v4, "tmp":[Ljava/lang/String;
    aput-object v1, v4, v2

    .line 832
    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    move-object v0, v4

    .line 837
    .end local v1    # "realType":Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 838
    sget-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 840
    :cond_2
    return-object v0
.end method

.method public static newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .line 779
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 780
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 792
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 793
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 763
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 764
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 855
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 856
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 809
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 810
    .local v0, "item":Landroid/content/ClipData$Item;
    invoke-static {p0, p2}, Landroid/content/ClipData;->getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "mimeTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v2
.end method


# virtual methods
.method public addItem(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .line 876
    if-eqz p1, :cond_0

    .line 879
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    return-void

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addItem(Landroid/content/ClipData$Item;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    invoke-virtual {p0, p2, p1}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 886
    return-void
.end method

.method public addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 897
    invoke-virtual {p0, p2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 899
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 905
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 909
    :cond_2
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 910
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/ClipData;->getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 912
    :cond_3
    return-void
.end method

.method public collectUris(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1093
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1094
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 1096
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1097
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_0
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1101
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 1102
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1103
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1106
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 1093
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1110
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public fixUris(I)V
    .locals 4
    .param p1, "contentUserHint"    # I

    .line 986
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 987
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 988
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 989
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 990
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->fixUris(I)V

    .line 992
    :cond_0
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 993
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 987
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public fixUrisLight(I)V
    .locals 6
    .param p1, "contentUserHint"    # I

    .line 1003
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1004
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1005
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1006
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1007
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1008
    .local v3, "data":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1009
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1012
    .end local v3    # "data":Landroid/net/Uri;
    :cond_0
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 1013
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 1004
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    .line 864
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 916
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItemAt(I)Landroid/content/ClipData$Item;
    .locals 1
    .param p1, "index"    # I

    .line 931
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 923
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public prepareToEnterProcess()V
    .locals 4

    .line 975
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 976
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 977
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 978
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 979
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 976
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public prepareToLeaveProcess(Z)V
    .locals 1
    .param p1, "leavingPackage"    # Z

    .line 946
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    .line 947
    return-void
.end method

.method public prepareToLeaveProcess(ZI)V
    .locals 5
    .param p1, "leavingPackage"    # Z
    .param p2, "intentFlags"    # I

    .line 955
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 956
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 957
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 958
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 959
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 961
    :cond_0
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 962
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 963
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string v4, "ClipData.Item.getUri()"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 965
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 966
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string v4, "ClipData.Item.getUri()"

    invoke-virtual {v3, v4, p2}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    .line 956
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setItemAt(ILandroid/content/ClipData$Item;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 936
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 937
    return-void
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .line 1032
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;)Z

    move-result v0

    xor-int/2addr v0, v1

    move v1, v0

    .local v1, "first":Z
    goto :goto_0

    .line 1035
    .end local v1    # "first":Z
    :cond_0
    nop

    .restart local v1    # "first":Z
    :goto_0
    move v0, v1

    .line 1037
    .end local v1    # "first":Z
    .local v0, "first":Z
    iget-object v1, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    const/16 v2, 0x20

    if-eqz v1, :cond_2

    .line 1038
    if-nez v0, :cond_1

    .line 1039
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1041
    :cond_1
    const/4 v0, 0x0

    .line 1042
    const-string v1, "I:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    iget-object v1, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1044
    const/16 v1, 0x78

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1045
    iget-object v1, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1047
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1048
    if-nez v0, :cond_3

    .line 1049
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1051
    :cond_3
    const/4 v0, 0x0

    .line 1052
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1053
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData$Item;

    invoke-virtual {v3, p1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1054
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1056
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public toShortStringShortItems(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    .line 1060
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1061
    if-nez p2, :cond_0

    .line 1062
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    invoke-virtual {v0, p1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1065
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1066
    const-string v0, " ..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1022
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1024
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1119
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1120
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    :goto_0
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1127
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1129
    iget-object v4, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData$Item;

    .line 1130
    .local v4, "item":Landroid/content/ClipData$Item;
    iget-object v5, v4, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-static {v5, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1131
    iget-object v5, v4, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1132
    iget-object v5, v4, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 1133
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    iget-object v5, v4, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1136
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    :goto_2
    iget-object v5, v4, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 1139
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    iget-object v5, v4, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 1142
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    .end local v4    # "item":Landroid/content/ClipData$Item;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1145
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1073
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1075
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ClipDescription;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1078
    :cond_0
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1079
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1080
    .local v2, "iToken":J
    const-wide v4, 0x10500000001L

    iget-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1081
    const-wide v4, 0x10500000002L

    iget-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1082
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1084
    .end local v2    # "iToken":J
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1085
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData$Item;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ClipData$Item;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1084
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1088
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1089
    return-void
.end method
