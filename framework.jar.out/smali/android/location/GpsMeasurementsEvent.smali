.class public Landroid/location/GpsMeasurementsEvent;
.super Ljava/lang/Object;
.source "GpsMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsMeasurementsEvent$Listener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsMeasurementsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_GPS_LOCATION_DISABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x0

.field public static final STATUS_READY:I = 0x1


# instance fields
.field private final mClock:Landroid/location/GpsClock;

.field private final mReadOnlyMeasurements:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Landroid/location/GpsMeasurementsEvent$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurementsEvent$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurementsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/GpsClock;[Landroid/location/GpsMeasurement;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GpsClock;
    .param p2, "measurements"    # [Landroid/location/GpsMeasurement;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_1

    .line 83
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    .line 89
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "measurementCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GpsMeasurement;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    .line 91
    return-void

    .line 84
    .end local v0    # "measurementCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GpsMeasurement;>;"
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'measurements\' must not be null or empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'clock\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getClock()Landroid/location/GpsClock;
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    return-object v0
.end method

.method public getMeasurements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ GpsMeasurementsEvent:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    invoke-virtual {v1}, Landroid/location/GpsClock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsMeasurement;

    .line 151
    .local v2, "measurement":Landroid/location/GpsMeasurement;
    invoke-virtual {v2}, Landroid/location/GpsMeasurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v2    # "measurement":Landroid/location/GpsMeasurement;
    goto :goto_0

    .line 155
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 137
    .local v0, "measurementsCount":I
    iget-object v1, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    new-array v2, v0, [Landroid/location/GpsMeasurement;

    .line 138
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/GpsMeasurement;

    .line 139
    .local v1, "measurementsArray":[Landroid/location/GpsMeasurement;
    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 141
    return-void
.end method
