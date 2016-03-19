.class public Lcom/cbs/app/inappbilling/IABUtils/IabException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/cbs/app/inappbilling/IABUtils/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Ljava/lang/Exception;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabException;->a:Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lcom/cbs/app/inappbilling/IABUtils/IabResult;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabException;->a:Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    return-object v0
.end method
