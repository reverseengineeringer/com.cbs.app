.class final Lcom/nielsen/app/sdk/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/h;

.field private b:[I

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nielsen/app/sdk/h$f;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;ILjava/util/concurrent/BlockingQueue;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nielsen/app/sdk/h$f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/h$e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$b;->a:Lcom/nielsen/app/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nielsen/app/sdk/h$b;->b:[I

    .line 903
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nielsen/app/sdk/h$b;->c:[Ljava/lang/String;

    .line 905
    const-string v2, ""

    iput-object v2, p0, Lcom/nielsen/app/sdk/h$b;->d:Ljava/lang/String;

    .line 907
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nielsen/app/sdk/h$b;->e:Ljava/util/concurrent/BlockingQueue;

    .line 909
    const/4 v2, 0x0

    iput v2, p0, Lcom/nielsen/app/sdk/h$b;->f:I

    .line 838
    :try_start_0
    move/from16 v0, p3

    iput v0, p0, Lcom/nielsen/app/sdk/h$b;->f:I

    .line 839
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$b;->d:Ljava/lang/String;

    .line 841
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$b;->e:Ljava/util/concurrent/BlockingQueue;

    .line 849
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v13

    .line 851
    new-array v2, v13, [I

    iput-object v2, p0, Lcom/nielsen/app/sdk/h$b;->b:[I

    .line 852
    new-array v2, v13, [Ljava/lang/String;

    iput-object v2, p0, Lcom/nielsen/app/sdk/h$b;->c:[Ljava/lang/String;

    .line 854
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v13, :cond_1

    .line 856
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nielsen/app/sdk/h$e;

    .line 1525
    iget v3, v2, Lcom/nielsen/app/sdk/h$e;->a:I

    .line 2517
    iget-object v4, v2, Lcom/nielsen/app/sdk/h$e;->b:Ljava/lang/String;

    .line 3509
    iget-object v2, v2, Lcom/nielsen/app/sdk/h$e;->c:Ljava/lang/String;

    .line 862
    packed-switch v3, :pswitch_data_0

    .line 881
    iget-object v3, p0, Lcom/nielsen/app/sdk/h$b;->e:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_0

    .line 883
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v8

    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring part <name, value> = <"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> on a HTTP POST multipart request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 886
    new-instance v3, Lcom/nielsen/app/sdk/h$f;

    const/4 v5, 0x3

    iget v6, p0, Lcom/nielsen/app/sdk/h$b;->f:I

    iget-object v7, p0, Lcom/nielsen/app/sdk/h$b;->d:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/nielsen/app/sdk/h$f;-><init>(Lcom/nielsen/app/sdk/h;IILjava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    .line 887
    iget-object v2, p0, Lcom/nielsen/app/sdk/h$b;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 854
    :cond_0
    :goto_1
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_0

    .line 867
    :pswitch_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    iget-object v3, p0, Lcom/nielsen/app/sdk/h$b;->b:[I

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v3, v12

    .line 870
    iget-object v3, p0, Lcom/nielsen/app/sdk/h$b;->c:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 899
    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const/16 v4, 0x45

    const-string v5, "Failed to instantiate the App SDK entity object"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    .line 901
    :cond_1
    return-void

    .line 862
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final consumeContent()V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 765
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 775
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 807
    return-void
.end method
