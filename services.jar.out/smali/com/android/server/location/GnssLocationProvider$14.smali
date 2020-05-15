.class Lcom/android/server/location/GnssLocationProvider$14;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 2010
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$14;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$14;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3500(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$14;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3400(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    return v0
.end method
