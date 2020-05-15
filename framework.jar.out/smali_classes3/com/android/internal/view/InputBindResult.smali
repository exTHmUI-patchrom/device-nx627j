.class public final Lcom/android/internal/view/InputBindResult;
.super Ljava/lang/Object;
.source "InputBindResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputBindResult$ResultCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/view/InputBindResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

.field public static final INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

.field public static final INVALID_USER:Lcom/android/internal/view/InputBindResult;

.field public static final NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

.field public static final NO_EDITOR:Lcom/android/internal/view/InputBindResult;

.field public static final NO_IME:Lcom/android/internal/view/InputBindResult;

.field public static final NULL:Lcom/android/internal/view/InputBindResult;

.field public static final NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;


# instance fields
.field public final channel:Landroid/view/InputChannel;

.field public final id:Ljava/lang/String;

.field public final method:Lcom/android/internal/view/IInputMethodSession;

.field public final result:I

.field public final sequence:I

.field public final userActionNotificationSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 233
    new-instance v0, Lcom/android/internal/view/InputBindResult$1;

    invoke-direct {v0}, Lcom/android/internal/view/InputBindResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 291
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    .line 295
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    .line 299
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NO_EDITOR:Lcom/android/internal/view/InputBindResult;

    .line 303
    nop

    .line 304
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    .line 308
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    .line 312
    nop

    .line 313
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    .line 317
    nop

    .line 318
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    .line 322
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V
    .locals 0
    .param p1, "_result"    # I
    .param p2, "_method"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "_channel"    # Landroid/view/InputChannel;
    .param p4, "_id"    # Ljava/lang/String;
    .param p5, "_sequence"    # I
    .param p6, "_userActionNotificationSequenceNumber"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/android/internal/view/InputBindResult;->result:I

    .line 181
    iput-object p2, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    .line 182
    iput-object p3, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 183
    iput-object p4, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    .line 184
    iput p5, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 185
    iput p6, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    .line 186
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/InputBindResult;->result:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    goto :goto_0

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 196
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    .line 199
    return-void
.end method

.method private static error(I)Lcom/android/internal/view/InputBindResult;
    .locals 8
    .param p0, "result"    # I

    .line 285
    new-instance v7, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v7

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 2

    .line 252
    iget v0, p0, Lcom/android/internal/view/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/view/InputBindResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_0
    const-string v0, "ERROR_NO_EDITOR"

    return-object v0

    .line 278
    :pswitch_1
    const-string v0, "ERROR_NOT_IME_TARGET_WINDOW"

    return-object v0

    .line 276
    :pswitch_2
    const-string v0, "ERROR_NULL_EDITOR_INFO"

    return-object v0

    .line 274
    :pswitch_3
    const-string v0, "ERROR_INVALID_USER"

    return-object v0

    .line 272
    :pswitch_4
    const-string v0, "ERROR_IME_NOT_CONNECTED"

    return-object v0

    .line 270
    :pswitch_5
    const-string v0, "ERROR_SYSTEM_NOT_READY"

    return-object v0

    .line 268
    :pswitch_6
    const-string v0, "ERROR_INVALID_PACKAGE_NAME"

    return-object v0

    .line 264
    :pswitch_7
    const-string v0, "ERROR_NO_IME"

    return-object v0

    .line 262
    :pswitch_8
    const-string v0, "ERROR_NULL"

    return-object v0

    .line 260
    :pswitch_9
    const-string v0, "SUCCESS_REPORT_WINDOW_FOCUS_ONLY"

    return-object v0

    .line 258
    :pswitch_a
    const-string v0, "SUCCESS_WAITING_IME_BINDING"

    return-object v0

    .line 256
    :pswitch_b
    const-string v0, "SUCCESS_WAITING_IME_SESSION"

    return-object v0

    .line 254
    :pswitch_c
    const-string v0, "SUCCESS_WITH_IME_SESSION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBindResult{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/view/InputBindResult;->getResultString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userActionNotificationSequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 217
    iget v0, p0, Lcom/android/internal/view/InputBindResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 223
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget v0, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return-void
.end method
