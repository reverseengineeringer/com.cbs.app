package android.support.v4.speech.tts;

import android.os.Build.VERSION;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnUtteranceCompletedListener;
import android.speech.tts.UtteranceProgressListener;
import java.util.Locale;
import java.util.Set;

class TextToSpeechICSMR1
{
  public static final String KEY_FEATURE_EMBEDDED_SYNTHESIS = "embeddedTts";
  public static final String KEY_FEATURE_NETWORK_SYNTHESIS = "networkTts";
  
  static Set<String> getFeatures(TextToSpeech paramTextToSpeech, Locale paramLocale)
  {
    if (Build.VERSION.SDK_INT >= 15) {
      return paramTextToSpeech.getFeatures(paramLocale);
    }
    return null;
  }
  
  static void setUtteranceProgressListener(TextToSpeech paramTextToSpeech, UtteranceProgressListenerICSMR1 paramUtteranceProgressListenerICSMR1)
  {
    if (Build.VERSION.SDK_INT >= 15)
    {
      paramTextToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener()
      {
        public final void onDone(String paramAnonymousString)
        {
          val$listener.onDone(paramAnonymousString);
        }
        
        public final void onError(String paramAnonymousString)
        {
          val$listener.onError(paramAnonymousString);
        }
        
        public final void onStart(String paramAnonymousString)
        {
          val$listener.onStart(paramAnonymousString);
        }
      });
      return;
    }
    paramTextToSpeech.setOnUtteranceCompletedListener(new TextToSpeech.OnUtteranceCompletedListener()
    {
      public final void onUtteranceCompleted(String paramAnonymousString)
      {
        val$listener.onStart(paramAnonymousString);
        val$listener.onDone(paramAnonymousString);
      }
    });
  }
  
  static abstract interface UtteranceProgressListenerICSMR1
  {
    public abstract void onDone(String paramString);
    
    public abstract void onError(String paramString);
    
    public abstract void onStart(String paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.speech.tts.TextToSpeechICSMR1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */