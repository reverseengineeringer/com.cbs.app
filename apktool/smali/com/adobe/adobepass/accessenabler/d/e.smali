.class public final Lcom/adobe/adobepass/accessenabler/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 1137
    if-eqz p0, :cond_1

    .line 1140
    sget-object v1, Lcom/adobe/adobepass/accessenabler/d/a;->c:Lcom/adobe/adobepass/accessenabler/d/a;

    invoke-virtual {v1, v0, p0}, Lcom/adobe/adobepass/accessenabler/d/a;->a(Ljava/io/Writer;Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
