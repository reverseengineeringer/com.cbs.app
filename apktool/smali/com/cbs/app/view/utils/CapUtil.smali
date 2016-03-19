.class public Lcom/cbs/app/view/utils/CapUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/utils/CapValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    .line 37
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->b()V

    .line 40
    const-class v0, Lcom/cbs/app/view/utils/CapUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/CapUtil;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    const-string v1, "bitrate_percentage"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static a()I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->b()V

    .line 174
    const v3, 0x493e0

    .line 1117
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->c()Ljava/lang/String;

    move-result-object v1

    .line 1118
    const-string v4, "neon"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "isNeon: true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v0

    .line 175
    :goto_0
    if-eqz v1, :cond_1

    move v1, v0

    .line 176
    :goto_1
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->getNumCores()I

    move-result v4

    .line 179
    :try_start_0
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->getCPUFrequencyCurrent()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 183
    :goto_2
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/utils/CapValue;

    .line 184
    iget v6, v0, Lcom/cbs/app/view/utils/CapValue;->b:I

    if-ne v6, v1, :cond_3

    iget v6, v0, Lcom/cbs/app/view/utils/CapValue;->a:I

    if-ne v6, v4, :cond_3

    iget v6, v0, Lcom/cbs/app/view/utils/CapValue;->c:I

    if-gt v6, v2, :cond_3

    .line 186
    iget v3, v0, Lcom/cbs/app/view/utils/CapValue;->e:I

    move v0, v3

    :goto_4
    move v3, v0

    .line 188
    goto :goto_3

    :cond_1
    move v1, v2

    .line 175
    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 189
    :cond_2
    return v3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/cat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/cbs/app/view/utils/CapUtil;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 145
    if-eqz v1, :cond_0

    .line 147
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 150
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    :try_start_2
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 147
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 151
    :cond_1
    :goto_1
    throw v0

    .line 150
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;D)Ljava/lang/String;
    .locals 7

    .prologue
    .line 233
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->b()V

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 238
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 242
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/modified_cap.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/utils/CapValue;

    .line 252
    iget v2, v0, Lcom/cbs/app/view/utils/CapValue;->e:I

    int-to-double v4, v2

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, v0, Lcom/cbs/app/view/utils/CapValue;->e:I

    goto :goto_1

    .line 247
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 255
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v0, "<CapData>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/utils/CapValue;

    .line 259
    const-string v4, "  <item>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v4, "    <Core>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v4, "</Core>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v4, "    <Neon>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v4, "</Neon>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v4, "    <Frequency>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v4, "</Frequency>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, "    <CodecType>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v4, "</CodecType>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v4, "    <BitRate>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v4, "</BitRate>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v4, "    <VideoWidth>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const-string v4, "</VideoWidth>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v4, "    <VideoHeight>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v4, "</VideoHeight>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v4, "    <ProfileLevel>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v4, v0, Lcom/cbs/app/view/utils/CapValue;->h:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v4, "</ProfileLevel>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v4, "    <FPS>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget v0, v0, Lcom/cbs/app/view/utils/CapValue;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v0, "</FPS>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v0, "  </item>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 289
    :cond_2
    const-string v0, "</CapData>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x0

    .line 296
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 299
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :try_start_2
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 301
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 302
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 314
    :cond_4
    :goto_3
    return-object v3

    .line 310
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 304
    :catch_2
    move-exception v0

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    if-eqz v1, :cond_4

    .line 308
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 310
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 306
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_5

    .line 308
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 311
    :cond_5
    :goto_6
    throw v0

    .line 310
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 306
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 304
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 162
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;F)V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/cbs/app/view/utils/CapUtil;->b()V

    .line 47
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    const-string v1, "bitrate_percentage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    invoke-static {p0}, Lcom/cbs/app/view/utils/CapUtil;->a(Landroid/content/Context;)F

    .line 223
    invoke-static {p0}, Lcom/cbs/app/view/utils/CapUtil;->a(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/CapUtil;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()V
    .locals 12

    .prologue
    const v11, 0xf4240

    const/4 v10, 0x2

    const/16 v7, 0x280

    const/16 v8, 0x1e0

    const/4 v1, 0x1

    .line 67
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    sget-object v9, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/cbs/app/view/utils/CapValue;

    const/4 v2, 0x0

    const v3, 0x927c0

    const v4, 0x493e0

    const/16 v5, 0x140

    const/16 v6, 0xf0

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v9, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/cbs/app/view/utils/CapValue;

    const/4 v2, 0x0

    const v3, 0x124f80

    const v4, 0x7a120

    const/16 v6, 0x140

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v9, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/cbs/app/view/utils/CapValue;

    const v4, 0xc3500

    move v2, v1

    move v3, v11

    move v5, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v9, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/cbs/app/view/utils/CapValue;

    const v3, 0x16e360

    move v2, v1

    move v4, v11

    move v5, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const/4 v4, 0x0

    const v6, 0x124f80

    move v3, v10

    move v5, v11

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const/4 v4, 0x0

    const v5, 0x16e360

    const v6, 0x16e360

    move v3, v10

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const v5, 0xc3500

    const v6, 0x155cc0

    move v3, v10

    move v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const v6, 0x186a00

    move v3, v10

    move v4, v1

    move v5, v11

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const v5, 0x124f80

    const v6, 0x1b7740

    move v3, v10

    move v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const v5, 0x1b7740

    const v6, 0x1e8480

    move v3, v10

    move v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const/4 v3, 0x4

    const v6, 0x1b7740

    move v4, v1

    move v5, v11

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const/4 v3, 0x4

    const v5, 0x16e360

    const v6, 0x1e8480

    move v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/cbs/app/view/utils/CapUtil;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/utils/CapValue;

    const/4 v3, 0x4

    const v5, 0x1e8480

    const v6, 0x2625a0

    move v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/cbs/app/view/utils/CapValue;-><init>(IIIIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string v0, "abi: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 204
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getCPUFrequencyCurrent()I
    .locals 1

    .prologue
    .line 128
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v0}, Lcom/cbs/app/view/utils/CapUtil;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNumCores()I
    .locals 2

    .prologue
    .line 101
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/cbs/app/view/utils/CapUtil$a;

    invoke-direct {v1}, Lcom/cbs/app/view/utils/CapUtil$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 105
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method
