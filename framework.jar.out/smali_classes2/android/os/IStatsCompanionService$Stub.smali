.class public abstract Landroid/os/IStatsCompanionService$Stub;
.super Landroid/os/Binder;
.source "IStatsCompanionService.java"

# interfaces
.implements Landroid/os/IStatsCompanionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsCompanionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IStatsCompanionService"

.field static final TRANSACTION_cancelAlarmForSubscriberTriggering:I = 0x7

.field static final TRANSACTION_cancelAnomalyAlarm:I = 0x3

.field static final TRANSACTION_cancelPullingAlarm:I = 0x5

.field static final TRANSACTION_pullData:I = 0x8

.field static final TRANSACTION_sendDataBroadcast:I = 0x9

.field static final TRANSACTION_sendSubscriberBroadcast:I = 0xa

.field static final TRANSACTION_setAlarmForSubscriberTriggering:I = 0x6

.field static final TRANSACTION_setAnomalyAlarm:I = 0x2

.field static final TRANSACTION_setPullingAlarm:I = 0x4

.field static final TRANSACTION_statsdReady:I = 0x1

.field static final TRANSACTION_triggerUidSnapshot:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.os.IStatsCompanionService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IStatsCompanionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IStatsCompanionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.os.IStatsCompanionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IStatsCompanionService;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/os/IStatsCompanionService;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/os/IStatsCompanionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IStatsCompanionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 42
    const-string v10, "android.os.IStatsCompanionService"

    .line 43
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v8, 0x1

    if-eq v13, v0, :cond_1

    packed-switch v13, :pswitch_data_0

    .line 151
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 145
    :pswitch_0
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->triggerUidSnapshot()V

    .line 147
    return v8

    .line 120
    :pswitch_1
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 124
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 126
    .local v17, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 128
    .local v19, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 130
    .local v21, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 132
    .local v23, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v25

    .line 134
    .local v25, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Landroid/os/StatsDimensionsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StatsDimensionsValue;

    .line 138
    .local v11, "_arg6":Landroid/os/StatsDimensionsValue;
    :goto_0
    move-object v11, v0

    goto :goto_1

    .end local v11    # "_arg6":Landroid/os/StatsDimensionsValue;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    .restart local v11    # "_arg6":Landroid/os/StatsDimensionsValue;
    :goto_1
    move-object v0, v12

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move v13, v8

    move-wide/from16 v8, v23

    move-object/from16 v26, v10

    move-object/from16 v10, v25

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v26, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v11}, Landroid/os/IStatsCompanionService$Stub;->sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V

    .line 141
    return v13

    .line 110
    .end local v11    # "_arg6":Landroid/os/StatsDimensionsValue;
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":J
    .end local v23    # "_arg4":J
    .end local v25    # "_arg5":[Ljava/lang/String;
    .end local v26    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2
    move v13, v8

    move-object/from16 v26, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v26    # "descriptor":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    .end local v26    # "descriptor":Ljava/lang/String;
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 114
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 115
    .local v2, "_arg1":J
    invoke-virtual {v12, v1, v2, v3}, Landroid/os/IStatsCompanionService$Stub;->sendDataBroadcast(Landroid/os/IBinder;J)V

    .line 116
    return v13

    .line 100
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "_arg0":I
    invoke-virtual {v12, v1}, Landroid/os/IStatsCompanionService$Stub;->pullData(I)[Landroid/os/StatsLogEventWrapper;

    move-result-object v2

    .line 104
    .local v2, "_result":[Landroid/os/StatsLogEventWrapper;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v15, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 106
    return v13

    .line 94
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/os/StatsLogEventWrapper;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAlarmForSubscriberTriggering()V

    .line 96
    return v13

    .line 86
    .end local v0    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 89
    .local v1, "_arg0":J
    invoke-virtual {v12, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setAlarmForSubscriberTriggering(J)V

    .line 90
    return v13

    .line 80
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "_arg0":J
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->cancelPullingAlarm()V

    .line 82
    return v13

    .line 72
    .end local v0    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_7
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 75
    .restart local v1    # "_arg0":J
    invoke-virtual {v12, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setPullingAlarm(J)V

    .line 76
    return v13

    .line 66
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "_arg0":J
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_8
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAnomalyAlarm()V

    .line 68
    return v13

    .line 58
    .end local v0    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 61
    .restart local v1    # "_arg0":J
    invoke-virtual {v12, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setAnomalyAlarm(J)V

    .line 62
    return v13

    .line 52
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "_arg0":J
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_a
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->statsdReady()V

    .line 54
    return v13

    .line 47
    .end local v0    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :cond_1
    move v13, v8

    move-object v0, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v0    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
