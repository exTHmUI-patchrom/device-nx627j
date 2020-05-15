.class public abstract Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.super Landroid/os/Binder;
.source "IAutofillWindowPresenter.java"

# interfaces
.implements Landroid/view/autofill/IAutofillWindowPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutofillWindowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutofillWindowPresenter"

.field static final TRANSACTION_hide:I = 0x2

.field static final TRANSACTION_show:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.autofill.IAutofillWindowPresenter"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.view.autofill.IAutofillWindowPresenter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutofillWindowPresenter;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutofillWindowPresenter;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
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

    .line 44
    const-string v0, "android.view.autofill.IAutofillWindowPresenter"

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg0":Landroid/graphics/Rect;
    goto :goto_0

    .line 84
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_0
    nop

    .line 86
    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->hide(Landroid/graphics/Rect;)V

    .line 87
    return v2

    .line 54
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .local v3, "_arg0":Landroid/view/WindowManager$LayoutParams;
    goto :goto_1

    .line 60
    .end local v3    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move-object v3, v1

    .line 63
    .restart local v3    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg1":Landroid/graphics/Rect;
    goto :goto_2

    .line 67
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_2
    nop

    .line 70
    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 72
    .local v4, "_arg2":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 73
    .local v5, "_arg3":I
    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 74
    return v2

    .line 49
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
