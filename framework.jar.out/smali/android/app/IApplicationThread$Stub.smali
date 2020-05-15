.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final TRANSACTION_attachAgent:I = 0x30

.field static final TRANSACTION_bindApplication:I = 0x4

.field static final TRANSACTION_clearDnsCache:I = 0x1a

.field static final TRANSACTION_dispatchPackageBroadcast:I = 0x16

.field static final TRANSACTION_dumpActivity:I = 0x19

.field static final TRANSACTION_dumpDbInfo:I = 0x23

.field static final TRANSACTION_dumpGfxInfo:I = 0x21

.field static final TRANSACTION_dumpHeap:I = 0x18

.field static final TRANSACTION_dumpMemInfo:I = 0x1f

.field static final TRANSACTION_dumpMemInfoProto:I = 0x20

.field static final TRANSACTION_dumpMessageHistory:I = 0x36

.field static final TRANSACTION_dumpProvider:I = 0x22

.field static final TRANSACTION_dumpService:I = 0xc

.field static final TRANSACTION_handleTrustStorageUpdate:I = 0x2f

.field static final TRANSACTION_notifyCleartextNetwork:I = 0x2b

.field static final TRANSACTION_processInBackground:I = 0x9

.field static final TRANSACTION_profilerControl:I = 0x10

.field static final TRANSACTION_requestAssistContextExtras:I = 0x25

.field static final TRANSACTION_runIsolatedEntryPoint:I = 0x5

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x31

.field static final TRANSACTION_scheduleBindService:I = 0xa

.field static final TRANSACTION_scheduleCrash:I = 0x17

.field static final TRANSACTION_scheduleCreateBackupAgent:I = 0x12

.field static final TRANSACTION_scheduleCreateService:I = 0x2

.field static final TRANSACTION_scheduleDeepFreeze:I = 0x39

.field static final TRANSACTION_scheduleDestroyBackupAgent:I = 0x13

.field static final TRANSACTION_scheduleEnterAnimationComplete:I = 0x2a

.field static final TRANSACTION_scheduleEnterDoze:I = 0x37

.field static final TRANSACTION_scheduleExit:I = 0x6

.field static final TRANSACTION_scheduleFreeze:I = 0x34

.field static final TRANSACTION_scheduleInstallProvider:I = 0x28

.field static final TRANSACTION_scheduleLeaveDoze:I = 0x38

.field static final TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x2e

.field static final TRANSACTION_scheduleLowMemory:I = 0xe

.field static final TRANSACTION_scheduleOnNewActivityOptions:I = 0x14

.field static final TRANSACTION_scheduleReceiver:I = 0x1

.field static final TRANSACTION_scheduleRegisteredReceiver:I = 0xd

.field static final TRANSACTION_scheduleServiceArgs:I = 0x7

.field static final TRANSACTION_scheduleSleeping:I = 0xf

.field static final TRANSACTION_scheduleStopService:I = 0x3

.field static final TRANSACTION_scheduleSuicide:I = 0x15

.field static final TRANSACTION_scheduleTransaction:I = 0x33

.field static final TRANSACTION_scheduleTranslucentConversionComplete:I = 0x26

.field static final TRANSACTION_scheduleTrimMemory:I = 0x1e

.field static final TRANSACTION_scheduleUnbindService:I = 0xb

.field static final TRANSACTION_scheduleUnfreeze:I = 0x35

.field static final TRANSACTION_setCoreSettings:I = 0x1c

.field static final TRANSACTION_setDelayBroadCastState:I = 0x3b

.field static final TRANSACTION_setHttpProxy:I = 0x1b

.field static final TRANSACTION_setNetworkBlockSeq:I = 0x32

.field static final TRANSACTION_setPreLoadingWebViewState:I = 0x3c

.field static final TRANSACTION_setProcessState:I = 0x27

.field static final TRANSACTION_setSchedulingGroup:I = 0x11

.field static final TRANSACTION_setStuckValueState:I = 0x3a

.field static final TRANSACTION_startBinderTracking:I = 0x2c

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0x2d

.field static final TRANSACTION_unstableProviderDied:I = 0x24

.field static final TRANSACTION_updatePackageCompatibilityInfo:I = 0x1d

.field static final TRANSACTION_updateTimePrefs:I = 0x29

.field static final TRANSACTION_updateTimeZone:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "android.app.IApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/app/IApplicationThread;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    .line 45
    const-string v12, "android.app.IApplicationThread"

    .line 46
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v20, 0x1

    if-eq v14, v0, :cond_46

    const/4 v0, 0x0

    const/4 v7, 0x0

    packed-switch v14, :pswitch_data_0

    .line 901
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 893
    :pswitch_0
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v0, v20

    nop

    .line 896
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setPreLoadingWebViewState(Z)V

    .line 897
    return v20

    .line 885
    .end local v0    # "_arg0":Z
    :pswitch_1
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v0, v20

    nop

    .line 888
    .restart local v0    # "_arg0":Z
    :cond_1
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setDelayBroadCastState(Z)V

    .line 889
    return v20

    .line 865
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v1, v20

    goto :goto_0

    :cond_2
    move v1, v0

    .line 869
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v2, v20

    goto :goto_1

    :cond_3
    move v2, v0

    .line 871
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 873
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 875
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 877
    .local v21, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 879
    .local v23, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 880
    .local v25, "_arg6":Ljava/lang/String;
    move-object v0, v15

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    move-wide/from16 v9, v23

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IApplicationThread$Stub;->setStuckValueState(ZZJJJJLjava/lang/String;)V

    .line 881
    return v20

    .line 859
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":J
    .end local v21    # "_arg4":J
    .end local v23    # "_arg5":J
    .end local v25    # "_arg6":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleDeepFreeze()V

    .line 861
    return v20

    .line 853
    :pswitch_4
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLeaveDoze()V

    .line 855
    return v20

    .line 847
    :pswitch_5
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleEnterDoze()V

    .line 849
    return v20

    .line 841
    :pswitch_6
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->dumpMessageHistory()V

    .line 843
    return v20

    .line 833
    :pswitch_7
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v0, v20

    nop

    .line 836
    .restart local v0    # "_arg0":Z
    :cond_4
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleUnfreeze(Z)V

    .line 837
    return v20

    .line 827
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleFreeze()V

    .line 829
    return v20

    .line 814
    :pswitch_9
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 817
    sget-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/servertransaction/ClientTransaction;

    .local v7, "_arg0":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_2

    .line 820
    .end local v7    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    :cond_5
    nop

    .restart local v7    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    :goto_2
    move-object v0, v7

    .line 822
    .end local v7    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    .local v0, "_arg0":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 823
    return v20

    .line 806
    .end local v0    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    :pswitch_a
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 809
    .local v0, "_arg0":J
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    .line 810
    return v20

    .line 793
    .end local v0    # "_arg0":J
    :pswitch_b
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 796
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .local v7, "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_3

    .line 799
    .end local v7    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_6
    nop

    .restart local v7    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :goto_3
    move-object v0, v7

    .line 801
    .end local v7    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 802
    return v20

    .line 785
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_c
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    .line 789
    return v20

    .line 779
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    .line 781
    return v20

    .line 769
    :pswitch_e
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 773
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    .line 774
    .local v1, "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 775
    return v20

    .line 756
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_f
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 759
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 762
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    nop

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_4
    move-object v0, v7

    .line 764
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 765
    return v20

    .line 750
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_10
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    .line 752
    return v20

    .line 742
    :pswitch_11
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 745
    .local v0, "_arg0":[B
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    .line 746
    return v20

    .line 734
    .end local v0    # "_arg0":[B
    :pswitch_12
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 737
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 738
    return v20

    .line 726
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_13
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 729
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    .line 730
    return v20

    .line 713
    .end local v0    # "_arg0":I
    :pswitch_14
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 716
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ProviderInfo;

    .local v7, "_arg0":Landroid/content/pm/ProviderInfo;
    goto :goto_5

    .line 719
    .end local v7    # "_arg0":Landroid/content/pm/ProviderInfo;
    :cond_8
    nop

    .restart local v7    # "_arg0":Landroid/content/pm/ProviderInfo;
    :goto_5
    move-object v0, v7

    .line 721
    .end local v7    # "_arg0":Landroid/content/pm/ProviderInfo;
    .local v0, "_arg0":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 722
    return v20

    .line 705
    .end local v0    # "_arg0":Landroid/content/pm/ProviderInfo;
    :pswitch_15
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 708
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    .line 709
    return v20

    .line 695
    .end local v0    # "_arg0":I
    :pswitch_16
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 699
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move/from16 v0, v20

    nop

    .line 700
    .local v0, "_arg1":Z
    :cond_9
    invoke-virtual {v15, v1, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 701
    return v20

    .line 679
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_17
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 683
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 685
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 687
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 689
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 690
    .local v10, "_arg4":I
    move-object v0, v15

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 691
    return v20

    .line 671
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    :pswitch_18
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 674
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 675
    return v20

    .line 656
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_19
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 659
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 662
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_a
    nop

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_6
    move-object v0, v7

    .line 665
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 667
    return v20

    .line 639
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 642
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 645
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_b
    nop

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_7
    move-object v0, v7

    .line 648
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 650
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 652
    return v20

    .line 624
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 627
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 630
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_c
    nop

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_8
    move-object v0, v7

    .line 633
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 635
    return v20

    .line 594
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 597
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_9

    .line 600
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_d
    move-object v1, v7

    .line 603
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 604
    sget-object v2, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    .local v2, "_arg1":Landroid/os/Debug$MemoryInfo;
    goto :goto_a

    .line 607
    .end local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    :cond_e
    move-object v2, v7

    .line 610
    .restart local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v3, v20

    goto :goto_b

    :cond_f
    move v3, v0

    .line 612
    .local v3, "_arg2":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v4, v20

    goto :goto_c

    :cond_10
    move v4, v0

    .line 614
    .local v4, "_arg3":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v5, v20

    goto :goto_d

    :cond_11
    move v5, v0

    .line 616
    .local v5, "_arg4":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    move/from16 v6, v20

    goto :goto_e

    :cond_12
    move v6, v0

    .line 618
    .local v6, "_arg5":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 619
    .local v8, "_arg6":[Ljava/lang/String;
    move-object v0, v15

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 620
    return v20

    .line 562
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v8    # "_arg6":[Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 565
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_f

    .line 568
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_13
    move-object v1, v7

    .line 571
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 572
    sget-object v2, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    .restart local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    goto :goto_10

    .line 575
    .end local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    :cond_14
    move-object v2, v7

    .line 578
    .restart local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    move/from16 v3, v20

    goto :goto_11

    :cond_15
    move v3, v0

    .line 580
    .restart local v3    # "_arg2":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    move/from16 v4, v20

    goto :goto_12

    :cond_16
    move v4, v0

    .line 582
    .restart local v4    # "_arg3":Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    move/from16 v5, v20

    goto :goto_13

    :cond_17
    move v5, v0

    .line 584
    .restart local v5    # "_arg4":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    move/from16 v6, v20

    goto :goto_14

    :cond_18
    move v6, v0

    .line 586
    .restart local v6    # "_arg5":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move/from16 v7, v20

    goto :goto_15

    :cond_19
    move v7, v0

    .line 588
    .local v7, "_arg6":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 589
    .local v9, "_arg7":[Ljava/lang/String;
    move-object v0, v15

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    .line 590
    return v20

    .line 554
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v9    # "_arg7":[Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 557
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 558
    return v20

    .line 539
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 544
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .local v7, "_arg1":Landroid/content/res/CompatibilityInfo;
    goto :goto_16

    .line 547
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :cond_1a
    nop

    .restart local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :goto_16
    move-object v1, v7

    .line 549
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 550
    return v20

    .line 526
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :pswitch_20
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 529
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .local v7, "_arg0":Landroid/os/Bundle;
    goto :goto_17

    .line 532
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :cond_1b
    nop

    .restart local v7    # "_arg0":Landroid/os/Bundle;
    :goto_17
    move-object v0, v7

    .line 534
    .end local v7    # "_arg0":Landroid/os/Bundle;
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    .line 535
    return v20

    .line 507
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_21
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 516
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/net/Uri;

    .local v7, "_arg3":Landroid/net/Uri;
    goto :goto_18

    .line 519
    .end local v7    # "_arg3":Landroid/net/Uri;
    :cond_1c
    nop

    .restart local v7    # "_arg3":Landroid/net/Uri;
    :goto_18
    move-object v3, v7

    .line 521
    .end local v7    # "_arg3":Landroid/net/Uri;
    .local v3, "_arg3":Landroid/net/Uri;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 522
    return v20

    .line 501
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/net/Uri;
    :pswitch_22
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    .line 503
    return v20

    .line 482
    :pswitch_23
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 485
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_19

    .line 488
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1d
    nop

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_19
    move-object v0, v7

    .line 491
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 493
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 495
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 497
    return v20

    .line 461
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[Ljava/lang/String;
    :pswitch_24
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    move/from16 v1, v20

    goto :goto_1a

    :cond_1e
    move v1, v0

    .line 465
    .local v1, "_arg0":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    move/from16 v2, v20

    goto :goto_1b

    :cond_1f
    move v2, v0

    .line 467
    .local v2, "_arg1":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    move/from16 v3, v20

    goto :goto_1c

    :cond_20
    move v3, v0

    .line 469
    .local v3, "_arg2":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 472
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 475
    .local v0, "_arg4":Landroid/os/ParcelFileDescriptor;
    move-object v5, v0

    goto :goto_1d

    .end local v0    # "_arg4":Landroid/os/ParcelFileDescriptor;
    :cond_21
    move-object v5, v7

    .line 477
    .local v5, "_arg4":Landroid/os/ParcelFileDescriptor;
    :goto_1d
    move-object v0, v15

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 478
    return v20

    .line 453
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v5    # "_arg4":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg3":Ljava/lang/String;
    :pswitch_25
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;)V

    .line 457
    return v20

    .line 443
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 447
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 449
    return v20

    .line 437
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_27
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    .line 439
    return v20

    .line 422
    :pswitch_28
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 426
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 427
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/Bundle;

    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_1e

    .line 430
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :cond_22
    nop

    .restart local v7    # "_arg1":Landroid/os/Bundle;
    :goto_1e
    move-object v1, v7

    .line 432
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 433
    return v20

    .line 402
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_29
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 405
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_1f

    .line 408
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_23
    move-object v0, v7

    .line 411
    .restart local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 412
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .local v7, "_arg1":Landroid/content/res/CompatibilityInfo;
    goto :goto_20

    .line 415
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :cond_24
    nop

    .restart local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :goto_20
    move-object v1, v7

    .line 417
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 418
    return v20

    .line 380
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :pswitch_2a
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 383
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .restart local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_21

    .line 386
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_25
    move-object v0, v7

    .line 389
    .restart local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    .line 390
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .restart local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    goto :goto_22

    .line 393
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :cond_26
    nop

    .restart local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :goto_22
    move-object v1, v7

    .line 396
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .restart local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 397
    .local v2, "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 398
    return v20

    .line 372
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "_arg2":I
    :pswitch_2b
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    .line 376
    return v20

    .line 355
    .end local v0    # "_arg0":I
    :pswitch_2c
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    move/from16 v0, v20

    nop

    .line 359
    .local v0, "_arg0":Z
    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 360
    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/app/ProfilerInfo;

    .local v7, "_arg1":Landroid/app/ProfilerInfo;
    goto :goto_23

    .line 363
    .end local v7    # "_arg1":Landroid/app/ProfilerInfo;
    :cond_28
    nop

    .restart local v7    # "_arg1":Landroid/app/ProfilerInfo;
    :goto_23
    move-object v1, v7

    .line 366
    .end local v7    # "_arg1":Landroid/app/ProfilerInfo;
    .local v1, "_arg1":Landroid/app/ProfilerInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .restart local v2    # "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 368
    return v20

    .line 345
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/app/ProfilerInfo;
    .end local v2    # "_arg2":I
    :pswitch_2d
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 349
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    move/from16 v0, v20

    nop

    .line 350
    .local v0, "_arg1":Z
    :cond_29
    invoke-virtual {v15, v1, v0}, Landroid/app/IApplicationThread$Stub;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 351
    return v20

    .line 339
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_2e
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    .line 341
    return v20

    .line 305
    :pswitch_2f
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v10

    .line 309
    .local v10, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 310
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 313
    .local v1, "_arg1":Landroid/content/Intent;
    move-object v2, v1

    goto :goto_24

    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_2a
    move-object v2, v7

    .line 316
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 318
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 320
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 321
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 324
    .local v1, "_arg4":Landroid/os/Bundle;
    move-object v5, v1

    goto :goto_25

    .end local v1    # "_arg4":Landroid/os/Bundle;
    :cond_2b
    move-object v5, v7

    .line 327
    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    move/from16 v6, v20

    goto :goto_26

    :cond_2c
    move v6, v0

    .line 329
    .local v6, "_arg5":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    move/from16 v7, v20

    goto :goto_27

    :cond_2d
    move v7, v0

    .line 331
    .local v7, "_arg6":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 333
    .local v17, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 334
    .local v18, "_arg8":I
    move-object v0, v15

    move-object v1, v10

    move v3, v11

    move-object/from16 v4, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 335
    return v20

    .line 288
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v10    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v11    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":I
    :pswitch_30
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 291
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_28

    .line 294
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_2e
    nop

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_28
    move-object v0, v7

    .line 297
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 299
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 301
    return v20

    .line 273
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_31
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 277
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 278
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/Intent;

    .local v7, "_arg1":Landroid/content/Intent;
    goto :goto_29

    .line 281
    .end local v7    # "_arg1":Landroid/content/Intent;
    :cond_2f
    nop

    .restart local v7    # "_arg1":Landroid/content/Intent;
    :goto_29
    move-object v1, v7

    .line 283
    .end local v7    # "_arg1":Landroid/content/Intent;
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 284
    return v20

    .line 254
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_32
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 258
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    .line 259
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/Intent;

    .restart local v7    # "_arg1":Landroid/content/Intent;
    goto :goto_2a

    .line 262
    .end local v7    # "_arg1":Landroid/content/Intent;
    :cond_30
    nop

    .restart local v7    # "_arg1":Landroid/content/Intent;
    :goto_2a
    move-object v2, v7

    .line 265
    .end local v7    # "_arg1":Landroid/content/Intent;
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    move/from16 v0, v20

    nop

    .line 267
    .local v0, "_arg2":Z
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 268
    .local v3, "_arg3":I
    invoke-virtual {v15, v1, v2, v0, v3}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 269
    return v20

    .line 248
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg3":I
    :pswitch_33
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    .line 250
    return v20

    .line 242
    :pswitch_34
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    .line 244
    return v20

    .line 227
    :pswitch_35
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 231
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 232
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/pm/ParceledListSlice;

    .local v7, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_2b

    .line 235
    .end local v7    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :cond_32
    nop

    .restart local v7    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_2b
    move-object v1, v7

    .line 237
    .end local v7    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 238
    return v20

    .line 221
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_36
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    .line 223
    return v20

    .line 211
    :pswitch_37
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    return v20

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_38
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 135
    .local v21, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    .line 136
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 139
    .local v1, "_arg1":Landroid/content/pm/ApplicationInfo;
    move-object v2, v1

    goto :goto_2c

    .end local v1    # "_arg1":Landroid/content/pm/ApplicationInfo;
    :cond_33
    move-object v2, v7

    .line 142
    .local v2, "_arg1":Landroid/content/pm/ApplicationInfo;
    :goto_2c
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 144
    .local v22, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    .line 145
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 148
    .local v1, "_arg3":Landroid/content/ComponentName;
    move-object v4, v1

    goto :goto_2d

    .end local v1    # "_arg3":Landroid/content/ComponentName;
    :cond_34
    move-object v4, v7

    .line 151
    .local v4, "_arg3":Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    .line 152
    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    .line 155
    .local v1, "_arg4":Landroid/app/ProfilerInfo;
    move-object v5, v1

    goto :goto_2e

    .end local v1    # "_arg4":Landroid/app/ProfilerInfo;
    :cond_35
    move-object v5, v7

    .line 158
    .local v5, "_arg4":Landroid/app/ProfilerInfo;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    .line 159
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 162
    .local v1, "_arg5":Landroid/os/Bundle;
    move-object v6, v1

    goto :goto_2f

    .end local v1    # "_arg5":Landroid/os/Bundle;
    :cond_36
    move-object v6, v7

    .line 165
    .local v6, "_arg5":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v23

    .line 167
    .local v23, "_arg6":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v24

    .line 169
    .local v24, "_arg7":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 171
    .local v25, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37

    move/from16 v10, v20

    goto :goto_30

    :cond_37
    move v10, v0

    .line 173
    .local v10, "_arg9":Z
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    move/from16 v11, v20

    goto :goto_31

    :cond_38
    move v11, v0

    .line 175
    .local v11, "_arg10":Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    move/from16 v1, v20

    goto :goto_32

    :cond_39
    move v1, v0

    :goto_32
    move-object v9, v12

    move v12, v1

    .line 177
    .local v9, "descriptor":Ljava/lang/String;
    .local v12, "_arg11":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    move/from16 v1, v20

    goto :goto_33

    :cond_3a
    move v1, v0

    :goto_33
    move-object v8, v13

    move v13, v1

    .line 179
    .local v13, "_arg12":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 180
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .local v1, "_arg13":Landroid/content/res/Configuration;
    goto :goto_34

    .line 183
    .end local v1    # "_arg13":Landroid/content/res/Configuration;
    :cond_3b
    move-object v1, v7

    .restart local v1    # "_arg13":Landroid/content/res/Configuration;
    :goto_34
    move-object v14, v1

    .line 186
    .end local v1    # "_arg13":Landroid/content/res/Configuration;
    .local v14, "_arg13":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 187
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .local v1, "_arg14":Landroid/content/res/CompatibilityInfo;
    goto :goto_35

    .line 190
    .end local v1    # "_arg14":Landroid/content/res/CompatibilityInfo;
    :cond_3c
    move-object v1, v7

    .restart local v1    # "_arg14":Landroid/content/res/CompatibilityInfo;
    :goto_35
    move-object v3, v15

    move-object v15, v1

    .line 193
    .end local v1    # "_arg14":Landroid/content/res/CompatibilityInfo;
    .local v15, "_arg14":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 194
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v26

    .line 196
    .local v26, "_arg15":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_3d

    .line 197
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 200
    .local v17, "_arg16":Landroid/os/Bundle;
    :goto_36
    move-object/from16 v17, v7

    goto :goto_37

    .end local v17    # "_arg16":Landroid/os/Bundle;
    :cond_3d
    goto :goto_36

    .line 203
    .restart local v17    # "_arg16":Landroid/os/Bundle;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 205
    .local v27, "_arg17":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    move/from16 v19, v20

    goto :goto_38

    :cond_3e
    move/from16 v19, v0

    .line 206
    .local v19, "_arg18":Z
    :goto_38
    move-object v0, v3

    move-object/from16 v28, v1

    move-object/from16 v1, v21

    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .local v28, "cl":Ljava/lang/ClassLoader;
    move-object v7, v3

    move-object/from16 v3, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v29, v9

    move/from16 v9, v25

    .end local v9    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move-object/from16 v16, v26

    move-object/from16 v18, v27

    invoke-virtual/range {v0 .. v19}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 207
    return v20

    .line 123
    .end local v2    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/app/ProfilerInfo;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v10    # "_arg9":Z
    .end local v11    # "_arg10":Z
    .end local v13    # "_arg12":Z
    .end local v14    # "_arg13":Landroid/content/res/Configuration;
    .end local v15    # "_arg14":Landroid/content/res/CompatibilityInfo;
    .end local v17    # "_arg16":Landroid/os/Bundle;
    .end local v19    # "_arg18":Z
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v23    # "_arg6":Landroid/app/IInstrumentationWatcher;
    .end local v24    # "_arg7":Landroid/app/IUiAutomationConnection;
    .end local v25    # "_arg8":I
    .end local v26    # "_arg15":Ljava/util/Map;
    .end local v27    # "_arg17":Ljava/lang/String;
    .end local v28    # "cl":Ljava/lang/ClassLoader;
    .end local v29    # "descriptor":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_39
    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    move-object/from16 v11, v29

    move-object/from16 v10, p2

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    .end local v29    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Landroid/os/IBinder;
    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    .line 127
    return v20

    .line 99
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move-object v11, v12

    move-object v10, v13

    move-object v12, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 104
    sget-object v1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .local v1, "_arg1":Landroid/content/pm/ServiceInfo;
    goto :goto_39

    .line 107
    .end local v1    # "_arg1":Landroid/content/pm/ServiceInfo;
    :cond_3f
    move-object v1, v7

    .line 110
    .restart local v1    # "_arg1":Landroid/content/pm/ServiceInfo;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    .line 111
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .local v7, "_arg2":Landroid/content/res/CompatibilityInfo;
    goto :goto_3a

    .line 114
    .end local v7    # "_arg2":Landroid/content/res/CompatibilityInfo;
    :cond_40
    nop

    .restart local v7    # "_arg2":Landroid/content/res/CompatibilityInfo;
    :goto_3a
    move-object v2, v7

    .line 117
    .end local v7    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .local v2, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .restart local v3    # "_arg3":I
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 119
    return v20

    .line 55
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ServiceInfo;
    .end local v2    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "_arg3":I
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move-object v11, v12

    move-object v10, v13

    move-object v12, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    .line 58
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_3b

    .line 61
    .end local v1    # "_arg0":Landroid/content/Intent;
    :cond_41
    move-object v1, v7

    .line 64
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    .line 65
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .local v2, "_arg1":Landroid/content/pm/ActivityInfo;
    goto :goto_3c

    .line 68
    .end local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    :cond_42
    move-object v2, v7

    .line 71
    .restart local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 72
    sget-object v3, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/CompatibilityInfo;

    .local v3, "_arg2":Landroid/content/res/CompatibilityInfo;
    goto :goto_3d

    .line 75
    .end local v3    # "_arg2":Landroid/content/res/CompatibilityInfo;
    :cond_43
    move-object v3, v7

    .line 78
    .restart local v3    # "_arg2":Landroid/content/res/CompatibilityInfo;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 80
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 82
    .local v14, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 83
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 86
    .local v4, "_arg5":Landroid/os/Bundle;
    move-object v6, v4

    goto :goto_3e

    .end local v4    # "_arg5":Landroid/os/Bundle;
    :cond_44
    move-object v6, v7

    .line 89
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    move/from16 v7, v20

    goto :goto_3f

    :cond_45
    move v7, v0

    .line 91
    .local v7, "_arg6":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 93
    .local v15, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 94
    .local v16, "_arg8":I
    move-object v0, v12

    move v4, v13

    move-object v5, v14

    move v8, v15

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 95
    return v20

    .line 50
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Z
    .end local v11    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":Ljava/lang/String;
    .end local v15    # "_arg7":I
    .end local v16    # "_arg8":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :cond_46
    move-object v11, v12

    move-object v10, v13

    move-object v12, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v20

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
