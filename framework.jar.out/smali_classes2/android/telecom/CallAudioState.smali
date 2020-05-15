.class public final Landroid/telecom/CallAudioState;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallAudioState$CallAudioRoute;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallAudioState;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTE_ALL:I = 0xf

.field public static final ROUTE_BLUETOOTH:I = 0x2

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_SPEAKER:I = 0x8

.field public static final ROUTE_WIRED_HEADSET:I = 0x4

.field public static final ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final isMuted:Z

.field private final route:I

.field private final supportedBluetoothDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedRouteMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 242
    new-instance v0, Landroid/telecom/CallAudioState$1;

    invoke-direct {v0}, Landroid/telecom/CallAudioState$1;-><init>()V

    sput-object v0, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    .line 129
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    .line 130
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    .line 119
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    .line 120
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    .line 121
    iget-object v0, p1, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 122
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    .line 123
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 6
    .param p1, "muted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/telecom/CallAudioState;-><init>(ZIILandroid/bluetooth/BluetoothDevice;Ljava/util/Collection;)V

    .line 101
    return-void
.end method

.method public constructor <init>(ZIILandroid/bluetooth/BluetoothDevice;Ljava/util/Collection;)V
    .locals 0
    .param p1, "isMuted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I
    .param p4, "activeBluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p5, "supportedBluetoothDevices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean p1, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    .line 110
    iput p2, p0, Landroid/telecom/CallAudioState;->route:I

    .line 111
    iput p3, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    .line 112
    iput-object p4, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    iput-object p5, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    .line 114
    return-void
.end method

.method public static audioRouteToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "route"    # I

    .line 218
    if-eqz p0, :cond_5

    and-int/lit8 v0, p0, -0x10

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 224
    const-string v1, "EARPIECE"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 226
    :cond_1
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 227
    const-string v1, "BLUETOOTH"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 229
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 230
    const-string v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 232
    :cond_3
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 233
    const-string v1, "SPEAKER"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 236
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 219
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_5
    :goto_0
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 138
    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Landroid/telecom/CallAudioState;

    if-nez v1, :cond_1

    .line 141
    return v0

    .line 143
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telecom/CallAudioState;

    .line 144
    .local v1, "state":Landroid/telecom/CallAudioState;
    iget-object v2, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, v1, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 145
    return v0

    .line 147
    :cond_2
    iget-object v2, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 148
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, v1, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 149
    return v0

    .line 151
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    goto :goto_0

    .line 152
    :cond_4
    iget-object v2, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, v1, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v2

    .line 153
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v2

    .line 154
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    nop

    .line 152
    :cond_5
    return v0
.end method

.method public getActiveBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRoute()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/telecom/CallAudioState;->route:I

    return v0
.end method

.method public getSupportedBluetoothDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    return-object v0
.end method

.method public getSupportedRouteMask()I
    .locals 1

    .line 192
    iget v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 159
    iget-object v0, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;->INSTANCE:Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;

    .line 160
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, "bluetoothDeviceList":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s, activeBluetoothDevice: [%s], supportedBluetoothDevices: [%s]]"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    .line 165
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Landroid/telecom/CallAudioState;->route:I

    .line 166
    invoke-static {v4}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    .line 167
    invoke-static {v4}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object v0, v3, v4

    .line 162
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 278
    iget-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 279
    iget v0, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v0, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 283
    return-void
.end method
