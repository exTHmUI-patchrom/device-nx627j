.class public final Lcom/android/internal/view/InputMethodClient;
.super Ljava/lang/Object;
.source "InputMethodClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputMethodClient$UnbindReason;,
        Lcom/android/internal/view/InputMethodClient$StartInputReason;
    }
.end annotation


# static fields
.field public static final START_INPUT_REASON_ACTIVATED_BY_IMMS:I = 0x7

.field public static final START_INPUT_REASON_APP_CALLED_RESTART_INPUT_API:I = 0x3

.field public static final START_INPUT_REASON_BOUND_TO_IMMS:I = 0x5

.field public static final START_INPUT_REASON_CHECK_FOCUS:I = 0x4

.field public static final START_INPUT_REASON_DEACTIVATED_BY_IMMS:I = 0x8

.field public static final START_INPUT_REASON_SESSION_CREATED_BY_IME:I = 0x9

.field public static final START_INPUT_REASON_UNBOUND_FROM_IMMS:I = 0x6

.field public static final START_INPUT_REASON_UNSPECIFIED:I = 0x0

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN:I = 0x1

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN_REPORT_ONLY:I = 0x2

.field public static final UNBIND_REASON_DISCONNECT_IME:I = 0x3

.field public static final UNBIND_REASON_NO_IME:I = 0x4

.field public static final UNBIND_REASON_SWITCH_CLIENT:I = 0x1

.field public static final UNBIND_REASON_SWITCH_IME:I = 0x2

.field public static final UNBIND_REASON_SWITCH_IME_FAILED:I = 0x5

.field public static final UNBIND_REASON_SWITCH_USER:I = 0x6

.field public static final UNBIND_REASON_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartInputReason(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_0
    const-string v0, "SESSION_CREATED_BY_IME"

    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "DEACTIVATED_BY_IMMS"

    return-object v0

    .line 64
    :pswitch_2
    const-string v0, "ACTIVATED_BY_IMMS"

    return-object v0

    .line 62
    :pswitch_3
    const-string v0, "UNBOUND_FROM_IMMS"

    return-object v0

    .line 60
    :pswitch_4
    const-string v0, "BOUND_TO_IMMS"

    return-object v0

    .line 58
    :pswitch_5
    const-string v0, "CHECK_FOCUS"

    return-object v0

    .line 56
    :pswitch_6
    const-string v0, "APP_CALLED_RESTART_INPUT_API"

    return-object v0

    .line 54
    :pswitch_7
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_ONLY"

    return-object v0

    .line 52
    :pswitch_8
    const-string v0, "WINDOW_FOCUS_GAIN"

    return-object v0

    .line 50
    :pswitch_9
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getUnbindReason(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_0
    const-string v0, "SWITCH_USER"

    return-object v0

    .line 101
    :pswitch_1
    const-string v0, "SWITCH_IME_FAILED"

    return-object v0

    .line 99
    :pswitch_2
    const-string v0, "NO_IME"

    return-object v0

    .line 97
    :pswitch_3
    const-string v0, "DISCONNECT_IME"

    return-object v0

    .line 95
    :pswitch_4
    const-string v0, "SWITCH_IME"

    return-object v0

    .line 93
    :pswitch_5
    const-string v0, "SWITCH_CLIENT"

    return-object v0

    .line 91
    :pswitch_6
    const-string v0, "UNSPECIFIED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static softInputModeToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "softInputMode"    # I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0xf

    .line 112
    .local v1, "state":I
    and-int/lit16 v2, p0, 0xf0

    .line 113
    .local v2, "adjust":I
    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 116
    .local v3, "isForwardNav":Z
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 136
    const-string v4, "STATE_UNKNOWN("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 133
    :pswitch_0
    const-string v4, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    goto :goto_1

    .line 130
    :pswitch_1
    const-string v4, "STATE_VISIBLE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    goto :goto_1

    .line 127
    :pswitch_2
    const-string v4, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    goto :goto_1

    .line 124
    :pswitch_3
    const-string v4, "STATE_HIDDEN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    goto :goto_1

    .line 121
    :pswitch_4
    const-string v4, "STATE_UNCHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    goto :goto_1

    .line 118
    :pswitch_5
    const-string v4, "STATE_UNSPECIFIED"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    nop

    .line 142
    :goto_1
    if-eqz v2, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_1

    .line 156
    const-string v4, "|ADJUST_UNKNOWN("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 153
    :cond_1
    const-string v4, "|ADJUST_NOTHING"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    goto :goto_2

    .line 150
    :cond_2
    const-string v4, "|ADJUST_PAN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    goto :goto_2

    .line 147
    :cond_3
    const-string v4, "|ADJUST_RESIZE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    goto :goto_2

    .line 144
    :cond_4
    const-string v4, "|ADJUST_UNSPECIFIED"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    nop

    .line 162
    :goto_2
    if-eqz v3, :cond_5

    .line 164
    const-string v4, "|IS_FORWARD_NAVIGATION"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
