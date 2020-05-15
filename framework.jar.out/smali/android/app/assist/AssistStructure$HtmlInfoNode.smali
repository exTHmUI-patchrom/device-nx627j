.class final Landroid/app/assist/AssistStructure$HtmlInfoNode;
.super Landroid/view/ViewStructure$HtmlInfo;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtmlInfoNode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNames:[Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field private final mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1983
    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    .line 1940
    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo;-><init>()V

    .line 1941
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$300(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    .line 1942
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 1944
    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    goto :goto_0

    .line 1946
    :cond_0
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 1947
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$500(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    .line 1948
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1949
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$500(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1951
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;
    .param p2, "x1"    # Landroid/app/assist/AssistStructure$1;

    .line 1932
    invoke-direct {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1972
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1960
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1961
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    .line 1962
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1963
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1964
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1962
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1967
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1955
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1977
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1978
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1980
    return-void
.end method
