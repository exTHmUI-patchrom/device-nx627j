.class public Landroid/app/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchManager$OnCancelListener;,
        Landroid/app/SearchManager$OnDismissListener;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final ACTION_MSG:Ljava/lang/String; = "action_msg"

.field public static final APP_DATA:Ljava/lang/String; = "app_data"

.field public static final CONTEXT_IS_VOICE:Ljava/lang/String; = "android.search.CONTEXT_IS_VOICE"

.field public static final CURSOR_EXTRA_KEY_IN_PROGRESS:Ljava/lang/String; = "in_progress"

.field private static final DBG:Z = false

.field public static final DISABLE_VOICE_SEARCH:Ljava/lang/String; = "android.search.DISABLE_VOICE_SEARCH"

.field public static final EXTRA_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field public static final EXTRA_NEW_SEARCH:Ljava/lang/String; = "new_search"

.field public static final EXTRA_SELECT_QUERY:Ljava/lang/String; = "select_query"

.field public static final EXTRA_WEB_SEARCH_PENDINGINTENT:Ljava/lang/String; = "web_search_pendingintent"

.field public static final FLAG_QUERY_REFINEMENT:I = 0x1

.field public static final INTENT_ACTION_GLOBAL_SEARCH:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field public static final INTENT_ACTION_SEARCHABLES_CHANGED:Ljava/lang/String; = "android.search.action.SEARCHABLES_CHANGED"

.field public static final INTENT_ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final INTENT_ACTION_SEARCH_SETTINGS_CHANGED:Ljava/lang/String; = "android.search.action.SETTINGS_CHANGED"

.field public static final INTENT_ACTION_WEB_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.WEB_SEARCH_SETTINGS"

.field public static final INTENT_GLOBAL_SEARCH_ACTIVITY_CHANGED:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

.field public static final MENU_KEY:C = 's'

.field public static final MENU_KEYCODE:I = 0x2f

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final SEARCH_MODE:Ljava/lang/String; = "search_mode"

.field public static final SHORTCUT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.search.suggest"

.field public static final SUGGEST_COLUMN_AUDIO_CHANNEL_CONFIG:Ljava/lang/String; = "suggest_audio_channel_config"

.field public static final SUGGEST_COLUMN_CONTENT_TYPE:Ljava/lang/String; = "suggest_content_type"

.field public static final SUGGEST_COLUMN_DURATION:Ljava/lang/String; = "suggest_duration"

.field public static final SUGGEST_COLUMN_FLAGS:Ljava/lang/String; = "suggest_flags"

.field public static final SUGGEST_COLUMN_FORMAT:Ljava/lang/String; = "suggest_format"

.field public static final SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field public static final SUGGEST_COLUMN_ICON_2:Ljava/lang/String; = "suggest_icon_2"

.field public static final SUGGEST_COLUMN_INTENT_ACTION:Ljava/lang/String; = "suggest_intent_action"

.field public static final SUGGEST_COLUMN_INTENT_DATA:Ljava/lang/String; = "suggest_intent_data"

.field public static final SUGGEST_COLUMN_INTENT_DATA_ID:Ljava/lang/String; = "suggest_intent_data_id"

.field public static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final SUGGEST_COLUMN_IS_LIVE:Ljava/lang/String; = "suggest_is_live"

.field public static final SUGGEST_COLUMN_LAST_ACCESS_HINT:Ljava/lang/String; = "suggest_last_access_hint"

.field public static final SUGGEST_COLUMN_PRODUCTION_YEAR:Ljava/lang/String; = "suggest_production_year"

.field public static final SUGGEST_COLUMN_PURCHASE_PRICE:Ljava/lang/String; = "suggest_purchase_price"

.field public static final SUGGEST_COLUMN_QUERY:Ljava/lang/String; = "suggest_intent_query"

.field public static final SUGGEST_COLUMN_RATING_SCORE:Ljava/lang/String; = "suggest_rating_score"

.field public static final SUGGEST_COLUMN_RATING_STYLE:Ljava/lang/String; = "suggest_rating_style"

.field public static final SUGGEST_COLUMN_RENTAL_PRICE:Ljava/lang/String; = "suggest_rental_price"

.field public static final SUGGEST_COLUMN_RESULT_CARD_IMAGE:Ljava/lang/String; = "suggest_result_card_image"

.field public static final SUGGEST_COLUMN_SHORTCUT_ID:Ljava/lang/String; = "suggest_shortcut_id"

.field public static final SUGGEST_COLUMN_SPINNER_WHILE_REFRESHING:Ljava/lang/String; = "suggest_spinner_while_refreshing"

.field public static final SUGGEST_COLUMN_TEXT_1:Ljava/lang/String; = "suggest_text_1"

.field public static final SUGGEST_COLUMN_TEXT_2:Ljava/lang/String; = "suggest_text_2"

.field public static final SUGGEST_COLUMN_TEXT_2_URL:Ljava/lang/String; = "suggest_text_2_url"

.field public static final SUGGEST_COLUMN_VIDEO_HEIGHT:Ljava/lang/String; = "suggest_video_height"

.field public static final SUGGEST_COLUMN_VIDEO_WIDTH:Ljava/lang/String; = "suggest_video_width"

.field public static final SUGGEST_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.search.suggest"

.field public static final SUGGEST_NEVER_MAKE_SHORTCUT:Ljava/lang/String; = "_-1"

.field public static final SUGGEST_PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static final SUGGEST_URI_PATH_QUERY:Ljava/lang/String; = "search_suggest_query"

.field public static final SUGGEST_URI_PATH_SHORTCUT:Ljava/lang/String; = "search_suggest_shortcut"

.field private static final TAG:Ljava/lang/String; = "SearchManager"

.field public static final USER_QUERY:Ljava/lang/String; = "user_query"


# instance fields
.field mCancelListener:Landroid/app/SearchManager$OnCancelListener;

.field private final mContext:Landroid/content/Context;

.field mDismissListener:Landroid/app/SearchManager$OnDismissListener;

.field final mHandler:Landroid/os/Handler;

.field private mSearchDialog:Landroid/app/SearchDialog;

.field private final mService:Landroid/app/ISearchManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 546
    iput-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 551
    iput-object p1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    .line 552
    iput-object p2, p0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    .line 553
    const-string/jumbo v0, "search"

    .line 554
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 553
    invoke-static {v0}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    .line 555
    return-void
.end method

.method private ensureSearchDialog()V
    .locals 2

    .line 633
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/app/SearchDialog;-><init>(Landroid/content/Context;Landroid/app/SearchManager;)V

    iput-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    .line 635
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 636
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 638
    :cond_0
    return-void
.end method


# virtual methods
.method public getAssistIntent(Z)Landroid/content/Intent;
    .locals 3
    .param p1, "inclContext"    # Z

    .line 952
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 953
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 954
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 955
    .local v1, "am":Landroid/app/IActivityManager;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    .line 956
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {v0, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    return-object v0

    .line 961
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 962
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 687
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getGlobalSearchActivities()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 2

    .line 698
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 854
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0, p1}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 938
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;

    .line 870
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 12
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .line 885
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 886
    return-object v0

    .line 889
    :cond_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "authority":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 891
    return-object v0

    .line 894
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 895
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 896
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, ""

    .line 897
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, ""

    .line 898
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 901
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "contentPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 903
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 907
    :cond_2
    const-string/jumbo v3, "search_suggest_query"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 910
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 913
    .local v4, "selArgs":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 914
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    move-object v4, v5

    .line 919
    .end local v4    # "selArgs":[Ljava/lang/String;
    .local v10, "selArgs":[Ljava/lang/String;
    :goto_0
    move-object v10, v4

    goto :goto_1

    .line 916
    .end local v10    # "selArgs":[Ljava/lang/String;
    .restart local v4    # "selArgs":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 919
    .end local v4    # "selArgs":[Ljava/lang/String;
    .restart local v10    # "selArgs":[Ljava/lang/String;
    :goto_1
    if-lez p3, :cond_4

    .line 920
    const-string/jumbo v4, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 923
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 926
    .local v11, "uri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v5, v11

    move-object v7, v3

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 2

    .line 715
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isVisible()Z
    .locals 1

    .line 774
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public launchAssist(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .line 975
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    if-nez v0, :cond_0

    .line 976
    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0, p1}, Landroid/app/ISearchManager;->launchAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    nop

    .line 982
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 993
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    if-nez v0, :cond_0

    .line 994
    const/4 v0, 0x0

    return v0

    .line 996
    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ISearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnCancelListener;->onCancel()V

    .line 833
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnDismissListener;->onDismiss()V

    .line 843
    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnCancelListener;

    .line 822
    iput-object p1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 823
    return-void
.end method

.method public setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnDismissListener;

    .line 811
    iput-object p1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 812
    return-void
.end method

.method startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .line 645
    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 646
    .local v0, "globalSearchActivity":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 647
    const-string v1, "SearchManager"

    const-string v2, "No global search activity found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void

    .line 650
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 652
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 654
    if-nez p3, :cond_1

    .line 655
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p3, v2

    goto :goto_0

    .line 657
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v2

    .line 660
    :goto_0
    const-string/jumbo v2, "source"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 661
    const-string/jumbo v2, "source"

    iget-object v3, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_2
    const-string v2, "app_data"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 665
    const-string/jumbo v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :cond_3
    if-eqz p2, :cond_4

    .line 668
    const-string/jumbo v2, "select_query"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    :cond_4
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 673
    :try_start_0
    iget-object v2, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    goto :goto_1

    .line 674
    :catch_0
    move-exception v2

    .line 675
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "SearchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Global search activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z

    .line 602
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    .line 604
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z
    .param p6, "sourceBounds"    # Landroid/graphics/Rect;

    .line 618
    if-eqz p5, :cond_0

    .line 619
    invoke-virtual {p0, p1, p2, p4, p6}, Landroid/app/SearchManager;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 620
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 625
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 626
    invoke-direct {p0}, Landroid/app/SearchManager;->ensureSearchDialog()V

    .line 628
    iget-object v1, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/SearchDialog;->show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    .line 630
    :cond_1
    return-void
.end method

.method public stopSearch()V
    .locals 1

    .line 759
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    .line 762
    :cond_0
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "launchActivity"    # Landroid/content/ComponentName;
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .line 737
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 742
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->launchQuerySearch()V

    .line 743
    return-void

    .line 738
    :cond_1
    :goto_0
    const-string v0, "SearchManager"

    const-string/jumbo v1, "triggerSearch called with empty query, ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method
