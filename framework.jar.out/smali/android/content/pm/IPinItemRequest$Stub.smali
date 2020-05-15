.class public abstract Landroid/content/pm/IPinItemRequest$Stub;
.super Landroid/os/Binder;
.source "IPinItemRequest.java"

# interfaces
.implements Landroid/content/pm/IPinItemRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPinItemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPinItemRequest$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPinItemRequest"

.field static final TRANSACTION_accept:I = 0x2

.field static final TRANSACTION_getAppWidgetProviderInfo:I = 0x4

.field static final TRANSACTION_getExtras:I = 0x5

.field static final TRANSACTION_getShortcutInfo:I = 0x3

.field static final TRANSACTION_isValid:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IPinItemRequest"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPinItemRequest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPinItemRequest;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.content.pm.IPinItemRequest"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPinItemRequest;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPinItemRequest;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/content/pm/IPinItemRequest$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPinItemRequest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v0, "android.content.pm.IPinItemRequest"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 102
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 104
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v3, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_0
    return v2

    .line 88
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 90
    .local v3, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v3, p3, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_1
    return v2

    .line 74
    .end local v3    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 76
    .local v3, "_result":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v3, p3, v2}, Landroid/content/pm/ShortcutInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    :goto_2
    return v2

    .line 59
    .end local v3    # "_result":Landroid/content/pm/ShortcutInfo;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 65
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x0

    .line 67
    .restart local v1    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/content/pm/IPinItemRequest$Stub;->accept(Landroid/os/Bundle;)Z

    move-result v3

    .line 68
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v2

    .line 51
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->isValid()Z

    move-result v1

    .line 53
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return v2

    .line 46
    .end local v1    # "_result":Z
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
