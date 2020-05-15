.class public Landroid/provider/UserDictionary$Words;
.super Ljava/lang/Object;
.source "UserDictionary.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/UserDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Words"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appid"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.userword"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.userword"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "frequency DESC"

.field public static final FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final LOCALE_TYPE_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCALE_TYPE_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final WORD:Ljava/lang/String; = "word"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "content://user_dictionary/words"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWord(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "localeType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-eq p3, v0, :cond_0

    .line 136
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .local v0, "locale":Ljava/util/Locale;
    goto :goto_0

    .line 144
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    move-object v0, v1

    .line 147
    .restart local v0    # "locale":Ljava/util/Locale;
    :goto_0
    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    .line 148
    return-void
.end method

.method public static addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "shortcut"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 170
    :cond_1
    const/16 v1, 0xff

    if-le p2, v1, :cond_2

    const/16 p2, 0xff

    .line 172
    :cond_2
    const/4 v1, 0x5

    .line 173
    .local v1, "COLUMN_COUNT":I
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 175
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "word"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string/jumbo v3, "locale"

    if-nez p4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "appid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string/jumbo v3, "shortcut"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v3, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    .local v3, "result":Landroid/net/Uri;
    return-void
.end method
