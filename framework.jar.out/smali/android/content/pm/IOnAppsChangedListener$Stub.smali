.class public abstract Landroid/content/pm/IOnAppsChangedListener$Stub;
.super Landroid/os/Binder;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOnAppsChangedListener"

.field static final TRANSACTION_onPackageAdded:I = 0x2

.field static final TRANSACTION_onPackageChanged:I = 0x3

.field static final TRANSACTION_onPackageRemoved:I = 0x1

.field static final TRANSACTION_onPackagesAvailable:I = 0x4

.field static final TRANSACTION_onPackagesSuspended:I = 0x6

.field static final TRANSACTION_onPackagesUnavailable:I = 0x5

.field static final TRANSACTION_onPackagesUnsuspended:I = 0x7

.field static final TRANSACTION_onShortcutChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOnAppsChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IOnAppsChangedListener;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_c

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 167
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .local v1, "_arg0":Landroid/os/UserHandle;
    goto :goto_0

    .line 173
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    :cond_0
    move-object v1, v3

    .line 176
    .restart local v1    # "_arg0":Landroid/os/UserHandle;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .local v3, "_arg2":Landroid/content/pm/ParceledListSlice;
    goto :goto_1

    .line 182
    .end local v3    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :cond_1
    nop

    .line 184
    .restart local v3    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :goto_1
    invoke-virtual {p0, v1, v4, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 185
    return v2

    .line 152
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UserHandle;

    .local v3, "_arg0":Landroid/os/UserHandle;
    goto :goto_2

    .line 158
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    :cond_2
    nop

    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    :goto_2
    move-object v1, v3

    .line 161
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    .restart local v1    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 163
    return v2

    .line 130
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .restart local v1    # "_arg0":Landroid/os/UserHandle;
    goto :goto_3

    .line 136
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    :cond_3
    move-object v1, v3

    .line 139
    .restart local v1    # "_arg0":Landroid/os/UserHandle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    .line 145
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :cond_4
    nop

    .line 147
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v1, v4, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    return v2

    .line 113
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .local v3, "_arg0":Landroid/os/UserHandle;
    goto :goto_5

    .line 119
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    :cond_5
    nop

    .line 122
    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 124
    .restart local v4    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    nop

    .line 125
    .local v1, "_arg2":Z
    :cond_6
    invoke-virtual {p0, v3, v4, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    .line 126
    return v2

    .line 96
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 99
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    goto :goto_6

    .line 102
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    :cond_7
    nop

    .line 105
    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 107
    .restart local v4    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    nop

    .line 108
    .restart local v1    # "_arg2":Z
    :cond_8
    invoke-virtual {p0, v3, v4, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    .line 109
    return v2

    .line 81
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UserHandle;

    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    goto :goto_7

    .line 87
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    :cond_9
    nop

    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    :goto_7
    move-object v1, v3

    .line 90
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    .local v1, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 92
    return v2

    .line 66
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 69
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UserHandle;

    .local v3, "_arg0":Landroid/os/UserHandle;
    goto :goto_8

    .line 72
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    :cond_a
    nop

    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    :goto_8
    move-object v1, v3

    .line 75
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    .restart local v1    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 77
    return v2

    .line 51
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 54
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UserHandle;

    .local v3, "_arg0":Landroid/os/UserHandle;
    goto :goto_9

    .line 57
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    :cond_b
    nop

    .restart local v3    # "_arg0":Landroid/os/UserHandle;
    :goto_9
    move-object v1, v3

    .line 60
    .end local v3    # "_arg0":Landroid/os/UserHandle;
    .restart local v1    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 62
    return v2

    .line 46
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
