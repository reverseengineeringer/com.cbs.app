.class final Lcom/kochava/android/tracker/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/b;->a(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/kochava/android/tracker/b;


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/b;Z)V
    .locals 1

    .prologue
    .line 836
    iput-object p1, p0, Lcom/kochava/android/tracker/b$6;->b:Lcom/kochava/android/tracker/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/android/tracker/b$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x78

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 843
    :try_start_0
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getKVinit post: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kochava/android/tracker/b$6;->b:Lcom/kochava/android/tracker/b;

    iget-object v4, v4, Lcom/kochava/android/tracker/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 846
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kochava/android/tracker/b;->c(Z)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 848
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-static {}, Lcom/kochava/android/tracker/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 852
    invoke-static {}, Lcom/kochava/android/tracker/b;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/kochava/android/tracker/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 854
    :cond_0
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 855
    const-string v4, "control.kochava.com"

    invoke-static {v4}, Lcom/kochava/android/tracker/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 859
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KVinit - posting to https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kochava/android/tracker/b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/track/kvinit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 860
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kochava/android/tracker/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/track/kvinit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 865
    iget-object v5, p0, Lcom/kochava/android/tracker/b$6;->b:Lcom/kochava/android/tracker/b;

    iget-object v5, v5, Lcom/kochava/android/tracker/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 867
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "kvinit data:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 869
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.protocol.expect-continue"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 872
    invoke-virtual {v6, v5}, Lorg/apache/http/entity/StringEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 873
    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 875
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 876
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 877
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 879
    if-nez v0, :cond_3

    .line 881
    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 1191
    :cond_2
    :goto_0
    return-void

    .line 887
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 888
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/a/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "(KVinit) Result: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 897
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-object v4, v0

    .line 904
    :goto_1
    if-eqz v4, :cond_8

    .line 907
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "(KVinit) Parsed result: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 914
    :try_start_4
    const-string v0, "flags"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v0

    .line 915
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Flags: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-object v3, v0

    .line 924
    :goto_2
    if-eqz v3, :cond_6

    .line 928
    :try_start_6
    const-string v0, "kochava_app_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app_id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 930
    invoke-static {v0}, Lcom/kochava/android/tracker/b;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 939
    :goto_3
    :try_start_7
    const-string v0, "session_tracking"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 940
    invoke-static {}, Lcom/kochava/android/tracker/b;->g()Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 949
    :cond_4
    :goto_4
    :try_start_8
    const-string v0, "currency"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setting currency to: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 951
    iget-object v5, p0, Lcom/kochava/android/tracker/b$6;->b:Lcom/kochava/android/tracker/b;

    invoke-static {v5, v0}, Lcom/kochava/android/tracker/b;->a(Lcom/kochava/android/tracker/b;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_2

    .line 959
    :goto_5
    :try_start_9
    const-string v0, "resend_initial"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 961
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 962
    iget-object v0, p0, Lcom/kochava/android/tracker/b$6;->b:Lcom/kochava/android/tracker/b;

    invoke-static {v0}, Lcom/kochava/android/tracker/b;->b(Lcom/kochava/android/tracker/b;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "initPrefs"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/tracker/b;->a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 963
    invoke-static {}, Lcom/kochava/android/tracker/b;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "initBool"

    const-string v6, "false"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_2

    .line 971
    :cond_5
    :goto_6
    :try_start_a
    const-string v0, "delay_for_referrer_data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/kochava/android/tracker/b;->b(I)I

    .line 973
    invoke-static {}, Lcom/kochava/android/tracker/b;->i()I

    move-result v0

    if-gez v0, :cond_b

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "referrerDelayFromInit returned was less than 0 ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kochava/android/tracker/b;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), setting referrerDelayFromInit to 0."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 976
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kochava/android/tracker/b;->b(I)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_2

    .line 995
    :cond_6
    :goto_7
    :try_start_b
    const-string v0, "blacklist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "blacklist: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    move v0, v2

    .line 997
    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_e

    .line 999
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1001
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1002
    invoke-static {}, Lcom/kochava/android/tracker/b;->j()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "android_id"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 997
    :cond_7
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 899
    :catch_0
    move-exception v0

    .line 901
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while parsing result json: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_1

    .line 1097
    :catch_1
    move-exception v0

    .line 1099
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljavax/net/ssl/SSLException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSLException! Shutting down SDK and sending report."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V

    .line 1102
    invoke-static {v0}, Lcom/kochava/android/tracker/b;->a(Ljava/lang/Exception;)V
    :try_end_d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 1114
    :catch_2
    move-exception v0

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TrackTask"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 919
    :catch_3
    move-exception v0

    move-object v0, v3

    :goto_a
    move-object v3, v0

    :try_start_e
    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_2

    .line 1108
    :catch_4
    move-exception v0

    .line 1110
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TrackTask"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    .line 1119
    :catch_5
    move-exception v0

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljavax/net/ssl/SSLException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSLException! Shutting down SDK and sending report."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V

    .line 1124
    invoke-static {v0}, Lcom/kochava/android/tracker/b;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 934
    :catch_6
    move-exception v0

    :try_start_10
    const-string v0, "KVinit response did not contain a app_id."

    invoke-static {v0}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_3

    .line 1130
    :catch_7
    move-exception v0

    .line 1132
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error during KVinit communication."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V

    .line 1135
    :cond_8
    :goto_b
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1142
    invoke-static {}, Lcom/kochava/android/tracker/b;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "initBool"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1144
    invoke-static {}, Lcom/kochava/android/tracker/b;->j()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "adid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    .line 1145
    :goto_c
    invoke-static {}, Lcom/kochava/android/tracker/b;->n()Z

    move-result v6

    move v3, v2

    .line 1148
    :goto_d
    invoke-static {}, Lcom/kochava/android/tracker/b;->i()I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 1151
    invoke-static {}, Lcom/kochava/android/tracker/b;->h()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "initData"

    const-string v7, "noData"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "noData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move v4, v1

    .line 1152
    :goto_e
    invoke-static {}, Lcom/kochava/android/tracker/b;->o()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    move v5, v1

    .line 1155
    :goto_f
    if-eqz v4, :cond_9

    if-nez v0, :cond_1b

    if-nez v6, :cond_1b

    .line 1157
    :cond_9
    if-eqz v4, :cond_a

    if-nez v5, :cond_1b

    .line 1163
    :cond_a
    const-wide/16 v4, 0x3e8

    :try_start_11
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_e

    .line 1171
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 1172
    goto :goto_d

    .line 944
    :catch_8
    move-exception v0

    :try_start_12
    const-string v0, "KVinit response did not contain flags."

    invoke-static {v0}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_4

    .line 978
    :cond_b
    :try_start_13
    invoke-static {}, Lcom/kochava/android/tracker/b;->i()I

    move-result v0

    if-le v0, v10, :cond_c

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "referrerDelayFromInit returned was greater than 120 ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kochava/android/tracker/b;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), setting referrerDelayFromInit to 120."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 981
    const/16 v0, 0x78

    invoke-static {v0}, Lcom/kochava/android/tracker/b;->b(I)I

    goto/16 :goto_7

    :catch_9
    move-exception v0

    goto/16 :goto_7

    .line 984
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setting referrerDelayFromInit to: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kochava/android/tracker/b;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_7

    .line 1004
    :cond_d
    :try_start_14
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fb_attribution_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1006
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1007
    invoke-static {}, Lcom/kochava/android/tracker/b;->j()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "fb_attribution_id"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_9

    .line 1034
    :catch_a
    move-exception v0

    :try_start_15
    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    .line 1039
    :cond_e
    :try_start_16
    const-string v0, "whitelist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "whitelist: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    move v0, v2

    .line 1041
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_14

    .line 1043
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1045
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1046
    invoke-static {}, Lcom/kochava/android/tracker/b;->k()Z
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    .line 1041
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1009
    :cond_10
    :try_start_17
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "imei"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1011
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1012
    invoke-static {}, Lcom/kochava/android/tracker/b;->j()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "imei"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1014
    :cond_11
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1016
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1017
    invoke-static {}, Lcom/kochava/android/tracker/b;->j()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "mac"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1019
    :cond_12
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "odin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1021
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1022
    invoke-static {}, Lcom/kochava/android/tracker/b;->j()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "odin"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1024
    :cond_13
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "adid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1026
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1027
    invoke-static {}, Lcom/kochava/android/tracker/b;->j()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "adid"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_9

    :catch_b
    move-exception v0

    .line 1063
    :cond_14
    :try_start_18
    const-string v0, "eventname_blacklist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "saving eventname_blacklist: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1066
    invoke-static {}, Lcom/kochava/android/tracker/b;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    .line 1068
    :goto_12
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_15

    .line 1070
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "eventname_blacklist item: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1071
    invoke-static {}, Lcom/kochava/android/tracker/b;->l()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1077
    :catch_c
    move-exception v0

    :try_start_19
    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    .line 1082
    :cond_15
    :try_start_1a
    const-string v0, "error"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "There was a problem getting the KVinit response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V

    .line 1084
    const-string v3, "invalid kochava_app_id, partner_name required for app_id autoprovisioning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1086
    invoke-static {}, Lcom/kochava/android/tracker/b;->m()Z
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto/16 :goto_0

    .line 1093
    :catch_d
    move-exception v0

    :try_start_1b
    invoke-static {}, Lcom/kochava/android/a/b;->a()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_7

    goto/16 :goto_b

    .line 1105
    :cond_16
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TrackTask"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V
    :try_end_1c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7

    goto/16 :goto_0

    .line 1127
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TrackTask"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    move v0, v2

    .line 1144
    goto/16 :goto_c

    :cond_19
    move v4, v2

    .line 1151
    goto/16 :goto_e

    :cond_1a
    move v5, v2

    .line 1152
    goto/16 :goto_f

    .line 1165
    :catch_e
    move-exception v4

    .line 1167
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected error during referral data wait loop "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/android/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1173
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finished referrer data wait "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    :cond_1c
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1180
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1182
    const-string v2, "sendonstart"

    iget-boolean v3, p0, Lcom/kochava/android/tracker/b$6;->a:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1183
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1184
    iget-object v1, p0, Lcom/kochava/android/tracker/b$6;->b:Lcom/kochava/android/tracker/b;

    invoke-static {v1}, Lcom/kochava/android/tracker/b;->c(Lcom/kochava/android/tracker/b;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1186
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 1187
    iget-object v1, p0, Lcom/kochava/android/tracker/b$6;->b:Lcom/kochava/android/tracker/b;

    invoke-static {v1}, Lcom/kochava/android/tracker/b;->c(Lcom/kochava/android/tracker/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_f
    move-exception v0

    goto/16 :goto_6

    :catch_10
    move-exception v0

    goto/16 :goto_5

    .line 919
    :catch_11
    move-exception v3

    goto/16 :goto_a
.end method
