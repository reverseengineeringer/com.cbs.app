.class public Lcom/conviva/StreamerError;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_SCOPE_RESOURCE:I = 0x3

.field public static final ERROR_SCOPE_STREAM:I = 0x2

.field public static final ERROR_SCOPE_STREAM_SEGMENT:I = 0x1

.field public static final SEVERITY_FATAL:I = 0x1

.field public static final SEVERITY_WARNING:I

.field public static final eErrorScope_Unknown:I


# instance fields
.field private _errorCode:Ljava/lang/String;

.field private _index:I

.field private _scope:I

.field private _severity:I

.field private _stream:Lcom/conviva/StreamInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/conviva/StreamInfo;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/conviva/StreamerError;->_errorCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/conviva/StreamerError;->_stream:Lcom/conviva/StreamInfo;

    iput p3, p0, Lcom/conviva/StreamerError;->_index:I

    iput p4, p0, Lcom/conviva/StreamerError;->_severity:I

    iput p5, p0, Lcom/conviva/StreamerError;->_scope:I

    return-void
.end method

.method public static makeStreamError(Ljava/lang/String;ILcom/conviva/StreamInfo;)Lcom/conviva/StreamerError;
    .locals 6

    new-instance v0, Lcom/conviva/StreamerError;

    const/4 v3, -0x1

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/conviva/StreamerError;-><init>(Ljava/lang/String;Lcom/conviva/StreamInfo;III)V

    return-object v0
.end method

.method public static makeStreamSegmentError(Ljava/lang/String;ILcom/conviva/StreamInfo;I)Lcom/conviva/StreamerError;
    .locals 6

    new-instance v0, Lcom/conviva/StreamerError;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/conviva/StreamerError;-><init>(Ljava/lang/String;Lcom/conviva/StreamInfo;III)V

    return-object v0
.end method

.method public static makeUnscopedError(Ljava/lang/String;I)Lcom/conviva/StreamerError;
    .locals 6

    new-instance v0, Lcom/conviva/StreamerError;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/conviva/StreamerError;-><init>(Ljava/lang/String;Lcom/conviva/StreamInfo;III)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/conviva/StreamerError;->_errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/conviva/StreamerError;->_index:I

    return v0
.end method

.method public getScope()I
    .locals 1

    iget v0, p0, Lcom/conviva/StreamerError;->_scope:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    iget v0, p0, Lcom/conviva/StreamerError;->_severity:I

    return v0
.end method

.method public getStream()Lcom/conviva/StreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/conviva/StreamerError;->_stream:Lcom/conviva/StreamInfo;

    return-object v0
.end method
