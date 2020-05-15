.class public final Landroid/net/metrics/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/NetworkEvent$Decoder;,
        Landroid/net/metrics/NetworkEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_CAPTIVE_PORTAL_FOUND:I = 0x4

.field public static final NETWORK_CONNECTED:I = 0x1

.field public static final NETWORK_DISCONNECTED:I = 0x7

.field public static final NETWORK_FIRST_VALIDATION_PORTAL_FOUND:I = 0xa

.field public static final NETWORK_FIRST_VALIDATION_SUCCESS:I = 0x8

.field public static final NETWORK_LINGER:I = 0x5

.field public static final NETWORK_REVALIDATION_PORTAL_FOUND:I = 0xb

.field public static final NETWORK_REVALIDATION_SUCCESS:I = 0x9

.field public static final NETWORK_UNLINGER:I = 0x6

.field public static final NETWORK_VALIDATED:I = 0x2

.field public static final NETWORK_VALIDATION_FAILED:I = 0x3


# instance fields
.field public final durationMs:J

.field public final eventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Landroid/net/metrics/NetworkEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "eventType"    # I

    .line 72
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/net/metrics/NetworkEvent;-><init>(IJ)V

    .line 73
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "durationMs"    # J

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 68
    iput-wide p2, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/NetworkEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/metrics/NetworkEvent$1;

    .line 32
    invoke-direct {p0, p1}, Landroid/net/metrics/NetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 104
    const-string v0, "NetworkEvent(%s, %dms)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/net/metrics/NetworkEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 105
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 104
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    return-void
.end method
