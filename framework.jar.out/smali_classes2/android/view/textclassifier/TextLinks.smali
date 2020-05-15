.class public final Landroid/view/textclassifier/TextLinks;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$Options;,
        Landroid/view/textclassifier/TextLinks$Builder;,
        Landroid/view/textclassifier/TextLinks$TextLinkSpan;,
        Landroid/view/textclassifier/TextLinks$Request;,
        Landroid/view/textclassifier/TextLinks$TextLink;,
        Landroid/view/textclassifier/TextLinks$ApplyStrategy;,
        Landroid/view/textclassifier/TextLinks$Status;
    }
.end annotation


# static fields
.field public static final APPLY_STRATEGY_IGNORE:I = 0x0

.field public static final APPLY_STRATEGY_REPLACE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_DIFFERENT_TEXT:I = 0x3

.field public static final STATUS_LINKS_APPLIED:I = 0x0

.field public static final STATUS_NO_LINKS_APPLIED:I = 0x2

.field public static final STATUS_NO_LINKS_FOUND:I = 0x1


# instance fields
.field private final mFullText:Ljava/lang/String;

.field private final mLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Landroid/view/textclassifier/TextLinks$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    .line 180
    sget-object v0, Landroid/view/textclassifier/TextLinks$TextLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextLinks$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/textclassifier/TextLinks$1;

    .line 55
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextLinks;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "fullText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p2, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textclassifier/TextLinks$TextLink;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    .line 100
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/textclassifier/TextLinks$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/ArrayList;
    .param p3, "x2"    # Landroid/view/textclassifier/TextLinks$1;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextLinks;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/text/Spannable;ILjava/util/function/Function;)I
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "applyStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)I"
        }
    .end annotation

    .line 141
    .local p3, "spanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/view/textclassifier/TextLinks$TextLink;Landroid/view/textclassifier/TextLinks$TextLinkSpan;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Landroid/view/textclassifier/TextLinksParams$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinksParams$Builder;-><init>()V

    .line 143
    invoke-virtual {v0, p2}, Landroid/view/textclassifier/TextLinksParams$Builder;->setApplyStrategy(I)Landroid/view/textclassifier/TextLinksParams$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p3}, Landroid/view/textclassifier/TextLinksParams$Builder;->setSpanFactory(Ljava/util/function/Function;)Landroid/view/textclassifier/TextLinksParams$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinksParams$Builder;->build()Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p0}, Landroid/view/textclassifier/TextLinksParams;->apply(Landroid/text/Spannable;Landroid/view/textclassifier/TextLinks;)I

    move-result v0

    .line 142
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getLinks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 151
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "TextLinks{fullText=%s, links=%s}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 163
    return-void
.end method
