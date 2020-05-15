.class public Landroid/provider/BlockedNumberContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract;,
        Landroid/provider/BlockedNumberContract$BlockedNumbers;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.blockednumber"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final EXTRA_CALL_PRESENTATION:Ljava/lang/String; = "extra_call_presentation"

.field public static final EXTRA_CONTACT_EXIST:Ljava/lang/String; = "extra_contact_exist"

.field public static final EXTRA_ENHANCED_SETTING_KEY:Ljava/lang/String; = "extra_enhanced_setting_key"

.field public static final EXTRA_ENHANCED_SETTING_VALUE:Ljava/lang/String; = "extra_enhanced_setting_value"

.field public static final METHOD_CAN_CURRENT_USER_BLOCK_NUMBERS:Ljava/lang/String; = "can_current_user_block_numbers"

.field public static final METHOD_IS_BLOCKED:Ljava/lang/String; = "is_blocked"

.field public static final METHOD_UNBLOCK:Ljava/lang/String; = "unblock"

.field public static final RES_CAN_BLOCK_NUMBERS:Ljava/lang/String; = "can_block"

.field public static final RES_ENHANCED_SETTING_IS_ENABLED:Ljava/lang/String; = "enhanced_setting_enabled"

.field public static final RES_NUMBER_IS_BLOCKED:Ljava/lang/String; = "blocked"

.field public static final RES_NUM_ROWS_DELETED:Ljava/lang/String; = "num_deleted"

.field public static final RES_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    const-string v0, "content://com.android.blockednumber"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method public static canCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 309
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "can_current_user_block_numbers"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 311
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "can_block"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 312
    .end local v2    # "res":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 315
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "canCurrentUserBlockNumbers: provider not ready."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    return v1
.end method

.method public static isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "is_blocked"

    invoke-virtual {v2, v3, v4, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 268
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "blocked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 269
    .end local v2    # "res":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 272
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "isBlocked: provider not ready."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return v1
.end method

.method public static unblock(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "unblock"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 298
    .local v0, "res":Landroid/os/Bundle;
    const-string/jumbo v1, "num_deleted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method
