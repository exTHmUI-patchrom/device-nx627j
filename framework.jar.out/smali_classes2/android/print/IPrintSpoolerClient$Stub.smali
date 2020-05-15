.class public abstract Landroid/print/IPrintSpoolerClient$Stub;
.super Landroid/os/Binder;
.source "IPrintSpoolerClient.java"

# interfaces
.implements Landroid/print/IPrintSpoolerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpoolerClient"

.field static final TRANSACTION_onAllPrintJobsForServiceHandled:I = 0x2

.field static final TRANSACTION_onAllPrintJobsHandled:I = 0x3

.field static final TRANSACTION_onPrintJobQueued:I = 0x1

.field static final TRANSACTION_onPrintJobStateChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.print.IPrintSpoolerClient"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpoolerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.print.IPrintSpoolerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintSpoolerClient;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintSpoolerClient;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/print/IPrintSpoolerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintSpoolerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "android.print.IPrintSpoolerClient"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    sget-object v1, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .local v1, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_0

    .line 91
    .end local v1    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_0
    nop

    .line 93
    .restart local v1    # "_arg0":Landroid/print/PrintJobInfo;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpoolerClient$Stub;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 94
    return v2

    .line 79
    .end local v1    # "_arg0":Landroid/print/PrintJobInfo;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/print/IPrintSpoolerClient$Stub;->onAllPrintJobsHandled()V

    .line 81
    return v2

    .line 66
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 72
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_1
    nop

    .line 74
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpoolerClient$Stub;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V

    .line 75
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    sget-object v1, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .local v1, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_2

    .line 59
    .end local v1    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_2
    nop

    .line 61
    .restart local v1    # "_arg0":Landroid/print/PrintJobInfo;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpoolerClient$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 62
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
