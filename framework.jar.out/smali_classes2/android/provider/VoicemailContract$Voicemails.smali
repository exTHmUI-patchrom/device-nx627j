.class public final Landroid/provider/VoicemailContract$Voicemails;
.super Ljava/lang/Object;
.source "VoicemailContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/OpenableColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/VoicemailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Voicemails"
.end annotation


# static fields
.field public static final ARCHIVED:Ljava/lang/String; = "archived"

.field public static final BACKED_UP:Ljava/lang/String; = "backed_up"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final DIRTY_RETAIN:I = -0x1

.field public static final DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemails"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final HAS_CONTENT:Ljava/lang/String; = "has_content"

.field public static final IS_OMTP_VOICEMAIL:Ljava/lang/String; = "is_omtp_voicemail"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final RESTORED:Ljava/lang/String; = "restored"

.field public static final SOURCE_DATA:Ljava/lang/String; = "source_data"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static STATE_DELETED:I = 0x0

.field public static STATE_INBOX:I = 0x0

.field public static STATE_UNDELETED:I = 0x0

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TRANSCRIPTION_AVAILABLE:I = 0x3

.field public static final TRANSCRIPTION_FAILED:I = 0x2

.field public static final TRANSCRIPTION_IN_PROGRESS:I = 0x1

.field public static final TRANSCRIPTION_NOT_STARTED:I = 0x0

.field public static final TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    const-string v0, "content://com.android.voicemail/voicemail"

    .line 168
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    .line 213
    const/4 v0, 0x0

    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_INBOX:I

    .line 218
    const/4 v0, 0x1

    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_DELETED:I

    .line 223
    const/4 v0, 0x2

    sput v0, Landroid/provider/VoicemailContract$Voicemails;->STATE_UNDELETED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 394
    sget-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "source_package"

    .line 395
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 394
    return-object v0
.end method

.method public static deleteAll(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 442
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "voicemail"    # Landroid/telecom/Voicemail;

    .line 450
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "date"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string/jumbo v1, "number"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "duration"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v1, "source_package"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string/jumbo v1, "source_data"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v1, "is_read"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->isRead()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 459
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_0

    .line 460
    const-string/jumbo v2, "subscription_component_name"

    .line 461
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v2, "subscription_id"

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 466
    const-string/jumbo v2, "transcription"

    invoke-virtual {p0}, Landroid/telecom/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_1
    return-object v0
.end method

.method public static insert(Landroid/content/Context;Ljava/util/List;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telecom/Voicemail;",
            ">;)I"
        }
    .end annotation

    .line 424
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 426
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 427
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Voicemail;

    invoke-static {v3}, Landroid/provider/VoicemailContract$Voicemails;->getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;

    move-result-object v3

    .line 428
    .local v3, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 426
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public static insert(Landroid/content/Context;Landroid/telecom/Voicemail;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voicemail"    # Landroid/telecom/Voicemail;

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/provider/VoicemailContract$Voicemails;->getContentValues(Landroid/telecom/Voicemail;)Landroid/content/ContentValues;

    move-result-object v1

    .line 411
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method
