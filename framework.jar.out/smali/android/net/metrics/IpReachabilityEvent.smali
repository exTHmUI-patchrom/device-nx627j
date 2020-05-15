.class public final Landroid/net/metrics/IpReachabilityEvent;
.super Ljava/lang/Object;
.source "IpReachabilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpReachabilityEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/IpReachabilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUD_FAILED:I = 0x200

.field public static final NUD_FAILED_ORGANIC:I = 0x400

.field public static final PROBE:I = 0x100

.field public static final PROVISIONING_LOST:I = 0x300

.field public static final PROVISIONING_LOST_ORGANIC:I = 0x500


# instance fields
.field public final eventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/IpReachabilityEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/IpReachabilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/IpReachabilityEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/metrics/IpReachabilityEvent$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static nudFailureEventType(ZZ)I
    .locals 1
    .param p0, "isFromProbe"    # Z
    .param p1, "isProvisioningLost"    # Z

    .line 84
    if-eqz p0, :cond_1

    .line 85
    if-eqz p1, :cond_0

    const/16 v0, 0x300

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    :goto_0
    return v0

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x500

    goto :goto_1

    :cond_2
    const/16 v0, 0x400

    :goto_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 93
    iget v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 94
    .local v0, "hi":I
    iget v1, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    and-int/lit16 v1, v1, 0xff

    .line 95
    .local v1, "lo":I
    sget-object v2, Landroid/net/metrics/IpReachabilityEvent$Decoder;->constants:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "eventName":Ljava/lang/String;
    const-string v3, "IpReachabilityEvent(%s:%02x)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 61
    iget v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
