.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;
.super Ljava/lang/Object;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ESTABLISHED:I = 0x4

.field public static final ESTABLISHING:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final INITIATED:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NEGOTIATING:I = 0x2

.field public static final REESTABLISHING:I = 0x6

.field public static final RENEGOTIATING:I = 0x5

.field public static final TERMINATED:I = 0x8

.field public static final TERMINATING:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 95
    const-string v0, "UNKNOWN"

    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "TERMINATED"

    return-object v0

    .line 91
    :pswitch_1
    const-string v0, "TERMINATING"

    return-object v0

    .line 89
    :pswitch_2
    const-string v0, "REESTABLISHING"

    return-object v0

    .line 87
    :pswitch_3
    const-string v0, "RENEGOTIATING"

    return-object v0

    .line 85
    :pswitch_4
    const-string v0, "ESTABLISHED"

    return-object v0

    .line 83
    :pswitch_5
    const-string v0, "ESTABLISHING"

    return-object v0

    .line 81
    :pswitch_6
    const-string v0, "NEGOTIATING"

    return-object v0

    .line 79
    :pswitch_7
    const-string v0, "INITIATED"

    return-object v0

    .line 77
    :pswitch_8
    const-string v0, "IDLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
