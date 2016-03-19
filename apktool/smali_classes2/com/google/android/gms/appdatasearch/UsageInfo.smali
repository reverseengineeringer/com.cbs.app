.class public Lcom/google/android/gms/appdatasearch/UsageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appdatasearch/UsageInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/j;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/appdatasearch/DocumentId;

.field final c:J

.field d:I

.field public final e:Ljava/lang/String;

.field final f:Lcom/google/android/gms/appdatasearch/DocumentContents;

.field final g:Z

.field h:I

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/j;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/UsageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/j;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->a:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->b:Lcom/google/android/gms/appdatasearch/DocumentId;

    iput-wide p3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->c:J

    iput p5, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->d:I

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->f:Lcom/google/android/gms/appdatasearch/DocumentContents;

    iput-boolean p8, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->g:Z

    iput p9, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->h:I

    iput p10, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->i:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V
    .locals 12

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(ILcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZIIB)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1000
    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;-><init>()V

    .line 2000
    new-instance v1, Lcom/google/android/gms/appdatasearch/DocumentSection;

    new-instance v8, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    const-string v9, "title"

    invoke-direct {v8, v9}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->a(I)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->b()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->b(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->c()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v8

    const-string v9, "text1"

    invoke-direct {v1, p3, v8, v9}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    if-eqz p4, :cond_0

    .line 3000
    new-instance v1, Lcom/google/android/gms/appdatasearch/DocumentSection;

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    const-string v10, "web_url"

    invoke-direct {v9, v10}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->a(I)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->a()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    move-result-object v9

    const-string v10, "url"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->b(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->c()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v8, "intent_action"

    invoke-static {v8, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v8, "intent_data"

    invoke-static {v8, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v8, "intent_activity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v8, "intent_extra_data_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v8, "intent_extra_data"

    invoke-static {v8, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->a()Lcom/google/android/gms/appdatasearch/DocumentContents$a;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$a;->b()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(ILcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 4000
    new-instance v1, Lcom/google/android/gms/appdatasearch/DocumentId;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/appdatasearch/DocumentId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 2

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentSection;

    new-instance v1, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->a()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$a;->c()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/appdatasearch/DocumentContents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->f:Lcom/google/android/gms/appdatasearch/DocumentContents;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->b:Lcom/google/android/gms/appdatasearch/DocumentId;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/j;->a(Lcom/google/android/gms/appdatasearch/UsageInfo;Landroid/os/Parcel;I)V

    return-void
.end method
