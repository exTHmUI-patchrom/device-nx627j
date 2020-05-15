.class public final Landroid/net/metrics/DhcpErrorEvent;
.super Ljava/lang/Object;
.source "DhcpErrorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpErrorEvent$Decoder;
    }
.end annotation


# static fields
.field public static final BOOTP_TOO_SHORT:I

.field public static final BUFFER_UNDERFLOW:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/DhcpErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DHCP_BAD_MAGIC_COOKIE:I

.field public static final DHCP_ERROR:I = 0x4

.field public static final DHCP_INVALID_OPTION_LENGTH:I

.field public static final DHCP_NO_COOKIE:I

.field public static final DHCP_NO_MSG_TYPE:I

.field public static final DHCP_UNKNOWN_MSG_TYPE:I

.field public static final L2_ERROR:I = 0x1

.field public static final L2_TOO_SHORT:I

.field public static final L2_WRONG_ETH_TYPE:I

.field public static final L3_ERROR:I = 0x2

.field public static final L3_INVALID_IP:I

.field public static final L3_NOT_IPV4:I

.field public static final L3_TOO_SHORT:I

.field public static final L4_ERROR:I = 0x3

.field public static final L4_NOT_UDP:I

.field public static final L4_WRONG_PORT:I

.field public static final MISC_ERROR:I = 0x5

.field public static final PARSING_ERROR:I

.field public static final RECEIVE_ERROR:I


# instance fields
.field public final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    const/4 v0, 0x1

    invoke-static {v0, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v1

    sput v1, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    .line 37
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v2

    sput v2, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    .line 39
    invoke-static {v1, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v2

    sput v2, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    .line 40
    invoke-static {v1, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v2

    sput v2, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    .line 41
    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v3

    sput v3, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    .line 43
    invoke-static {v2, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v3

    sput v3, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    .line 44
    invoke-static {v2, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v3

    sput v3, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    .line 46
    const/4 v3, 0x4

    invoke-static {v3, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v4

    sput v4, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    .line 47
    invoke-static {v3, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v4

    sput v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    .line 48
    invoke-static {v3, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v4

    sput v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    .line 49
    invoke-static {v3, v3}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v4

    sput v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    .line 50
    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v5

    sput v5, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    .line 51
    const/4 v5, 0x6

    invoke-static {v3, v5}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v3

    sput v3, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    .line 53
    invoke-static {v4, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    .line 54
    invoke-static {v4, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    .line 55
    invoke-static {v4, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    .line 82
    new-instance v0, Landroid/net/metrics/DhcpErrorEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DhcpErrorEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DhcpErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpErrorEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/metrics/DhcpErrorEvent$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static errorCodeWithOption(II)I
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "option"    # I

    .line 94
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    const/16 v1, 0xff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private static makeErrorCode(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "subtype"    # I

    .line 98
    shl-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 103
    const-string v0, "DhcpErrorEvent(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
