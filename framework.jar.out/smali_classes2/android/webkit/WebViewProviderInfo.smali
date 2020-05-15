.class public final Landroid/webkit/WebViewProviderInfo;
.super Ljava/lang/Object;
.source "WebViewProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/webkit/WebViewProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final availableByDefault:Z

.field public final description:Ljava/lang/String;

.field public final isFallback:Z

.field public final packageName:Ljava/lang/String;

.field public final signatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/webkit/WebViewProviderInfo$1;

    invoke-direct {v0}, Landroid/webkit/WebViewProviderInfo$1;-><init>()V

    sput-object v0, Landroid/webkit/WebViewProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 64
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/webkit/WebViewProviderInfo$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/WebViewProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "availableByDefault"    # Z
    .param p4, "isFallback"    # Z
    .param p5, "signatures"    # [Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 36
    iput-boolean p4, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 37
    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 38
    new-array v0, v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_1

    .line 40
    :cond_0
    array-length v1, p5

    new-array v1, v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    .line 41
    move v1, v0

    .local v1, "n":I
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_1

    .line 42
    iget-object v2, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Landroid/content/pm/Signature;

    aget-object v4, p5, v1

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "n":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
