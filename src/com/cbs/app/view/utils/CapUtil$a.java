package com.cbs.app.view.utils;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

final class CapUtil$a
  implements FileFilter
{
  public final boolean accept(File paramFile)
  {
    return Pattern.matches("cpu[0-9]+", paramFile.getName());
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.CapUtil.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */